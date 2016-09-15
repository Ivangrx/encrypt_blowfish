require "encrypt_blowfish/version"
require "openssl"

module EncryptBlowfish
    class Blowfish < Struct.new(:key, :pad_with_spaces)
      def encrypt(str)
        cipher = OpenSSL::Cipher.new('bf-ecb').encrypt
        if pad_with_spaces
          str += ' ' until (str.bytesize % 8).zero?
          cipher.padding = 0
        end
        cipher.key = key
        binary_data = cipher.update(str) << cipher.final
        binary_data.unpack('H*').first
      end

      def decrypt(hex_encoded)
        cipher = OpenSSL::Cipher.new('bf-ecb').decrypt
        cipher.padding = 0 if pad_with_spaces
        cipher.key = key
        binary_data = [hex_encoded].pack('H*')
        str = cipher.update(binary_data) << cipher.final
        str.force_encoding(Encoding::UTF_8)
        str.rstrip if self.pad_with_spaces
      end
    end
end
