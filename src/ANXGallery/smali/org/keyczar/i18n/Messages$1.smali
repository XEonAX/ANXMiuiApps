.class final Lorg/keyczar/i18n/Messages$1;
.super Ljava/util/HashMap;
.source "Messages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/keyczar/i18n/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 25
    const-string v0, "CiphertextTooShort"

    const-string v1, "Input of length {0} is too short to be valid ciphertext"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "InputBufferTooShort"

    const-string v1, "Input buffer is too short. Given: {0} bytes. Need: {1}"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v0, "BadVersionNumber"

    const-string v1, "Received a bad version number: {0}"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v0, "SignatureTooShort"

    const-string v1, "Input of length {0} is too short to be valid signature"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const-string v0, "NoPrimaryKeyFound"

    const-string v1, "No primary key found"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "InvalidSignatureException"

    const-string v1, "Invalid ciphertext signature."

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v0, "KeyWithHashIdentifier"

    const-string v1, "Key with hash identifier {0} not found"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v0, "Signer.Signing"

    const-string v1, "Signing {0} bytes "

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const-string v0, "InvalidTypeInInput"

    const-string v1, "Invalid type in input: {0}"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v0, "InvalidPadding"

    const-string v1, "Invalid padding {0} specified for key"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v0, "Verifier.Verifying"

    const-string v1, "Verifying {0} bytes"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "Base64Coder.IllegalLength"

    const-string v1, "Input source is of illegal length: {0}"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v0, "Base64Coder.IllegalCharacter"

    const-string v1, "Illegal character in Base64 string: {0}"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v0, "Encrypter.Encrypting"

    const-string v1, "Encrypting {0} bytes."

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v0, "Crypter.Decrypting"

    const-string v1, "Decrypting {0} bytes."

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v0, "HybridDecrypter.InvalidSessionKey "

    const-string v1, "Invalid hybrid session key"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "HybridDecrypter.InvalidCiphertext "

    const-string v1, "Invalid hybrid ciphertext"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v0, "AesKey.InvalidPackedKey"

    const-string v1, "Invalid packed key"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v0, "KeyczarFileReader.FileError"

    const-string v1, "Error reading file: {0}"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "KeyczarKey.PublicKeyExport"

    const-string v1, "Public keys of type {0} must be exported from private keys."

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v0, "Keyczar.UnacceptablePurpose"

    const-string v1, "Unacceptable purpose: {0}"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v0, "Keyczar.NeedEncryptedReader"

    const-string v1, "Must use an EncryptedReader to read  encrypted key sets."

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v0, "Keyczar.SinglePrimary"

    const-string v1, "Key sets may only have a single primary version"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string v0, "Keyczar.ReadVersion"

    const-string v1, "Read version: {0}"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const-string v0, "Keyczar.SizeWarning"

    const-string v1, "WARNING: {0}-bit key size is less than the recommended default key size of {1} bits for {2} keys."

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v0, "Keyczar.NewVersion"

    const-string v1, "Created new version: {0}"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v0, "Keyczar.PromotedVersion"

    const-string v1, "Promoting version: {0}"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    const-string v0, "Keyczar.CantPromotePrimary"

    const-string v1, "Can\'t promote a primary key."

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v0, "Keyczar.DemotingVersion"

    const-string v1, "Demoting version: {0} "

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v0, "Keyczar.CantDemoteScheduled"

    const-string v1, "Can\'t demote an inactive key."

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v0, "Keyczar.CantRevoke"

    const-string v1, "Can\'t revoke key unless inactive."

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v0, "Keyczar.NoSuchVersion"

    const-string v1, "No such version number: {0}"

    invoke-virtual {p0, v0, v1}, Lorg/keyczar/i18n/Messages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
