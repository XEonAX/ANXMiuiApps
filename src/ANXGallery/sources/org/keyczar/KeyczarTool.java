package org.keyczar;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.HashMap;
import org.keyczar.enums.Command;
import org.keyczar.enums.Flag;
import org.keyczar.enums.KeyPurpose;
import org.keyczar.enums.KeyStatus;
import org.keyczar.enums.RsaPadding;
import org.keyczar.exceptions.KeyczarException;
import org.keyczar.i18n.Messages;
import org.keyczar.interfaces.KeyType;
import org.keyczar.interfaces.KeyczarReader;

public class KeyczarTool {
    private static MockKeyczarReader mock = null;

    public static void setReader(MockKeyczarReader mockKeyczarReader) {
        mock = mockKeyczarReader;
    }

    public static MockKeyczarReader getMock() {
        return mock;
    }

    public static void main(String[] strArr) {
        if (strArr.length == 0) {
            printUsage();
            return;
        }
        try {
            Command command = Command.getCommand(strArr[0]);
            HashMap hashMap = new HashMap();
            for (String str : strArr) {
                if (str.startsWith("--")) {
                    String[] split = str.substring(2).split("=");
                    if (split.length > 1) {
                        hashMap.put(Flag.getFlag(split[0]), split[1]);
                    }
                }
            }
            String str2 = (String) hashMap.get(Flag.LOCATION);
            if (!(str2 == null || str2.endsWith(File.separator))) {
                str2 = str2 + File.separator;
            }
            KeyPurpose purpose = KeyPurpose.getPurpose((String) hashMap.get(Flag.PURPOSE));
            KeyStatus status = KeyStatus.getStatus((String) hashMap.get(Flag.STATUS));
            String str3 = (String) hashMap.get(Flag.ASYMMETRIC);
            String str4 = (String) hashMap.get(Flag.CRYPTER);
            String str5 = (String) hashMap.get(Flag.DESTINATION);
            String str6 = (String) hashMap.get(Flag.NAME);
            String str7 = (String) hashMap.get(Flag.PADDING);
            String str8 = (String) hashMap.get(Flag.PASSPHRASE);
            String str9 = (String) hashMap.get(Flag.PEMFILE);
            String str10 = (String) hashMap.get(Flag.VERSION);
            int i = -1;
            if (hashMap.containsKey(Flag.SIZE)) {
                i = Integer.parseInt((String) hashMap.get(Flag.SIZE));
            }
            switch (command) {
                case CREATE:
                    create(str2, str6, purpose, str3);
                    return;
                case ADDKEY:
                    addKey(str2, status, str4, i, str7);
                    return;
                case PUBKEY:
                    publicKeys(str2, str5);
                    return;
                case PROMOTE:
                    promote(str2, Integer.parseInt(str10));
                    return;
                case DEMOTE:
                    demote(str2, Integer.parseInt(str10));
                    return;
                case REVOKE:
                    revoke(str2, Integer.parseInt(str10));
                    return;
                case USEKEY:
                    if (strArr.length > 2) {
                        useKey(strArr[1], str2, str5, str4);
                        return;
                    } else {
                        printUsage();
                        return;
                    }
                case IMPORT_KEY:
                    importKey(str2, str9, status, str4, str7, str8);
                    return;
                case EXPORT_KEY:
                    exportKey(str2, str4, Integer.parseInt(str10), str9, str8);
                    return;
                default:
                    return;
            }
        } catch (Exception e) {
            e.printStackTrace();
            printUsage();
        }
        e.printStackTrace();
        printUsage();
    }

    private static void exportKey(String str, String str2, int i, String str3, String str4) throws KeyczarException {
        if (i < 0) {
            throw new KeyczarException(Messages.getString("KeyczarTool.MissingVersion", new Object[0]));
        }
        GenericKeyczar createGenericKeyczar = createGenericKeyczar(str, str2);
        String pemString = createGenericKeyczar.getKey(createGenericKeyczar.getVersion(i)).getPemString(str4);
        try {
            File file = new File(str3);
            if (file.createNewFile()) {
                new FileOutputStream(file).write(pemString.getBytes("UTF8"));
            } else {
                throw new KeyczarException(Messages.getString("", file));
            }
        } catch (Throwable e) {
            throw new KeyczarException(Messages.getString("", new Object[0]), e);
        }
    }

    private static void importKey(String str, String str2, KeyStatus keyStatus, String str3, String str4, String str5) throws KeyczarException, IOException {
        GenericKeyczar createGenericKeyczar = createGenericKeyczar(str, str3);
        KeyMetadata metadata = createGenericKeyczar.getMetadata();
        GenericKeyczar importingKeyczar = getImportingKeyczar(str2, str4, str5, metadata.getPurpose());
        KeyType type = importingKeyczar.getMetadata().getType();
        if (metadata.getType() != type && createGenericKeyczar.getVersions().isEmpty()) {
            metadata.setType(type);
        }
        createGenericKeyczar.addVersion(keyStatus, importingKeyczar.getPrimaryKey());
        updateGenericKeyczar(createGenericKeyczar, str3, str);
    }

    private static GenericKeyczar getImportingKeyczar(String str, String str2, String str3, KeyPurpose keyPurpose) throws KeyczarException, IOException {
        GenericKeyczar e;
        RsaPadding padding = getPadding(str2);
        InputStream fileStream = getFileStream(str);
        try {
            e = new GenericKeyczar(new X509CertificateReader(keyPurpose, fileStream, padding));
        } catch (KeyczarException e2) {
            e = e2;
            if (e.getCause() instanceof CertificateException) {
                fileStream = getFileStream(str);
                e = new GenericKeyczar(new PkcsKeyReader(keyPurpose, fileStream, padding, str3));
                fileStream.close();
                return e;
            }
            throw e;
        } finally {
            fileStream.close();
        }
        return e;
    }

    private static InputStream getFileStream(String str) throws KeyczarException {
        try {
            return new FileInputStream(str);
        } catch (FileNotFoundException e) {
            throw new KeyczarException(Messages.getString("KeyczarTool.FileNotFound", str));
        }
    }

    private static void useKey(String str, String str2, String str3, String str4) throws KeyczarException {
        GenericKeyczar createGenericKeyczar = createGenericKeyczar(str2, str4);
        if (str3 == null) {
            throw new KeyczarException(Messages.getString("KeyczarTool.MustDefinePublic", new Object[0]));
        }
        KeyczarReader keyczarEncryptedReader;
        String str5 = "";
        KeyczarReader keyczarFileReader = new KeyczarFileReader(str2);
        if (str4 != null) {
            keyczarEncryptedReader = new KeyczarEncryptedReader(keyczarFileReader, new Crypter(str4));
        } else {
            keyczarEncryptedReader = keyczarFileReader;
        }
        switch (createGenericKeyczar.getMetadata().getPurpose()) {
            case DECRYPT_AND_ENCRYPT:
                str5 = new Crypter(keyczarEncryptedReader).encrypt(str);
                break;
            case SIGN_AND_VERIFY:
                str5 = new Signer(keyczarEncryptedReader).sign(str);
                break;
            default:
                throw new KeyczarException(Messages.getString("KeyczarTool.UnsupportedPurpose", createGenericKeyczar.getMetadata().getPurpose()));
        }
        createGenericKeyczar.writeFile(str5, str3);
    }

    private static void addKey(String str, KeyStatus keyStatus, String str2, int i, String str3) throws KeyczarException {
        GenericKeyczar createGenericKeyczar = createGenericKeyczar(str, str2);
        if (i == -1) {
            createGenericKeyczar.addVersion(keyStatus, getPadding(str3));
        } else {
            createGenericKeyczar.addVersion(keyStatus, getPadding(str3), i);
        }
        updateGenericKeyczar(createGenericKeyczar, str2, str);
    }

    private static RsaPadding getPadding(String str) throws KeyczarException {
        if (str == null) {
            return null;
        }
        try {
            return RsaPadding.valueOf(str.toUpperCase());
        } catch (IllegalArgumentException e) {
            throw new KeyczarException(Messages.getString("InvalidPadding", str));
        }
    }

    private static void create(String str, String str2, KeyPurpose keyPurpose, String str3) throws KeyczarException {
        KeyMetadata keyMetadata = null;
        if (keyPurpose == null) {
            throw new KeyczarException(Messages.getString("KeyczarTool.MustDefinePurpose", new Object[0]));
        }
        switch (keyPurpose) {
            case DECRYPT_AND_ENCRYPT:
                if (str3 == null) {
                    keyMetadata = new KeyMetadata(str2, KeyPurpose.DECRYPT_AND_ENCRYPT, DefaultKeyType.AES);
                    break;
                } else {
                    keyMetadata = new KeyMetadata(str2, KeyPurpose.DECRYPT_AND_ENCRYPT, DefaultKeyType.RSA_PRIV);
                    break;
                }
            case SIGN_AND_VERIFY:
                if (str3 != null) {
                    if (!str3.equalsIgnoreCase("rsa")) {
                        if (!str3.equalsIgnoreCase("ec")) {
                            keyMetadata = new KeyMetadata(str2, KeyPurpose.SIGN_AND_VERIFY, DefaultKeyType.DSA_PRIV);
                            break;
                        } else {
                            keyMetadata = new KeyMetadata(str2, KeyPurpose.SIGN_AND_VERIFY, DefaultKeyType.EC_PRIV);
                            break;
                        }
                    }
                    keyMetadata = new KeyMetadata(str2, KeyPurpose.SIGN_AND_VERIFY, DefaultKeyType.RSA_PRIV);
                    break;
                }
                keyMetadata = new KeyMetadata(str2, KeyPurpose.SIGN_AND_VERIFY, DefaultKeyType.HMAC_SHA1);
                break;
            case TEST:
                keyMetadata = new KeyMetadata(str2, KeyPurpose.TEST, DefaultKeyType.TEST);
                break;
        }
        if (keyMetadata == null) {
            throw new KeyczarException(Messages.getString("KeyczarTool.UnsupportedPurpose", keyPurpose));
        } else if (mock != null) {
            mock.setMetadata(keyMetadata);
        } else if (str == null) {
            throw new KeyczarException(Messages.getString("KeyczarTool.MustDefineLocation", new Object[0]));
        } else {
            File file = new File(str + "meta");
            if (file.exists()) {
                throw new KeyczarException(Messages.getString("KeyczarTool.FileExists", file));
            }
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                fileOutputStream.write(keyMetadata.toString().getBytes(Keyczar.DEFAULT_ENCODING));
                fileOutputStream.close();
            } catch (Throwable e) {
                throw new KeyczarException(Messages.getString("KeyczarTool.UnableToWrite", file.toString()), e);
            }
        }
    }

    private static void promote(String str, int i) throws KeyczarException {
        if (i < 0) {
            throw new KeyczarException(Messages.getString("KeyczarTool.MissingVersion", new Object[0]));
        }
        GenericKeyczar createGenericKeyczar = createGenericKeyczar(str);
        createGenericKeyczar.promote(i);
        updateGenericKeyczar(createGenericKeyczar, str);
    }

    private static void demote(String str, int i) throws KeyczarException {
        if (i < 0) {
            throw new KeyczarException(Messages.getString("KeyczarTool.MissingVersion", new Object[0]));
        }
        GenericKeyczar createGenericKeyczar = createGenericKeyczar(str);
        createGenericKeyczar.demote(i);
        updateGenericKeyczar(createGenericKeyczar, str);
    }

    private static void publicKeys(String str, String str2) throws KeyczarException {
        if (mock == null && str2 == null) {
            throw new KeyczarException(Messages.getString("KeyczarTool.MustDefineDestination", new Object[0]));
        }
        createGenericKeyczar(str).publicKeyExport(str2);
    }

    private static void revoke(String str, int i) throws KeyczarException {
        GenericKeyczar createGenericKeyczar = createGenericKeyczar(str);
        createGenericKeyczar.revoke(i);
        updateGenericKeyczar(createGenericKeyczar, str);
        if (mock != null) {
            mock.removeKey(i);
        } else if (!new File(str + i).delete()) {
            throw new KeyczarException(Messages.getString("KeyczarTool.UnableToDelete", new Object[0]));
        }
    }

    private static void printUsage() {
        int i = 0;
        ArrayList arrayList = new ArrayList();
        for (Command command : Command.values()) {
            arrayList.add(command.toString());
        }
        Flag[] values = Flag.values();
        int length = values.length;
        while (i < length) {
            arrayList.add(values[i].toString());
            i++;
        }
        System.out.println(Messages.getString("KeyczarTool.Usage", arrayList.toArray()));
    }

    private static GenericKeyczar createGenericKeyczar(String str) throws KeyczarException {
        return createGenericKeyczar(str, null);
    }

    private static GenericKeyczar createGenericKeyczar(String str, String str2) throws KeyczarException {
        if (mock != null) {
            return new GenericKeyczar(mock);
        }
        if (str == null) {
            throw new KeyczarException(Messages.getString("KeyczarTool.NeedLocation", Messages.getString("KeyczarTool.Location", new Object[0])));
        }
        KeyczarReader keyczarEncryptedReader;
        KeyczarReader keyczarFileReader = new KeyczarFileReader(str);
        if (str2 != null) {
            keyczarEncryptedReader = new KeyczarEncryptedReader(keyczarFileReader, new Crypter(str2));
        } else {
            keyczarEncryptedReader = keyczarFileReader;
        }
        return new GenericKeyczar(keyczarEncryptedReader);
    }

    private static void updateGenericKeyczar(GenericKeyczar genericKeyczar, String str) throws KeyczarException {
        updateGenericKeyczar(genericKeyczar, null, str);
    }

    private static void updateGenericKeyczar(GenericKeyczar genericKeyczar, String str, String str2) throws KeyczarException {
        if (mock != null) {
            mock.setMetadata(genericKeyczar.getMetadata());
            for (KeyVersion keyVersion : genericKeyczar.getVersions()) {
                mock.setKey(keyVersion.getVersionNumber(), genericKeyczar.getKey(keyVersion));
            }
        } else if (str != null) {
            genericKeyczar.writeEncrypted(str2, new Encrypter(str));
        } else {
            genericKeyczar.write(str2);
        }
    }
}
