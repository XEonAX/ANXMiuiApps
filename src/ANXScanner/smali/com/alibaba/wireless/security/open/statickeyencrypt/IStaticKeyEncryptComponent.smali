.class public interface abstract Lcom/alibaba/wireless/security/open/statickeyencrypt/IStaticKeyEncryptComponent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/wireless/security/open/IComponent;


# annotations
.annotation runtime Lcom/alibaba/wireless/security/framework/InterfacePluginInfo;
    pluginName = "main"
.end annotation


# static fields
.field public static final OPEN_ALGORITHM_MAX_NUMBER:I = 0x14

.field public static final OPEN_CIPHER_AES128:I = 0x10

.field public static final OPEN_CIPHER_AES192:I = 0x11

.field public static final OPEN_CIPHER_AES256:I = 0x12

.field public static final OPEN_NO_SUCH_ITEM:I = 0x2

.field public static final OPEN_OVERRIDE_SUCCESS:I = 0x2

.field public static final OPEN_REMOVE_FAILED:I = 0x0

.field public static final OPEN_REMOVE_SUCCESS:I = 0x1

.field public static final OPEN_SAVE_FAILED:I = 0x0

.field public static final OPEN_SAVE_SUCCESS:I = 0x1


# virtual methods
.method public abstract decrypt(ILjava/lang/String;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract encrypt(ILjava/lang/String;[B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract encryptSecretData(ILjava/lang/String;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract isSecretExist(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract removeSecret(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method

.method public abstract saveSecret(Ljava/lang/String;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/wireless/security/open/SecException;
        }
    .end annotation
.end method
