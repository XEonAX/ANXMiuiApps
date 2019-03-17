.class synthetic Lorg/keyczar/GenericKeyczar$1;
.super Ljava/lang/Object;
.source "GenericKeyczar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/keyczar/GenericKeyczar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$keyczar$enums$KeyPurpose:[I

.field static final synthetic $SwitchMap$org$keyczar$enums$KeyStatus:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 231
    invoke-static {}, Lorg/keyczar/enums/KeyPurpose;->values()[Lorg/keyczar/enums/KeyPurpose;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/keyczar/GenericKeyczar$1;->$SwitchMap$org$keyczar$enums$KeyPurpose:[I

    :try_start_0
    sget-object v0, Lorg/keyczar/GenericKeyczar$1;->$SwitchMap$org$keyczar$enums$KeyPurpose:[I

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->DECRYPT_AND_ENCRYPT:Lorg/keyczar/enums/KeyPurpose;

    invoke-virtual {v1}, Lorg/keyczar/enums/KeyPurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lorg/keyczar/GenericKeyczar$1;->$SwitchMap$org$keyczar$enums$KeyPurpose:[I

    sget-object v1, Lorg/keyczar/enums/KeyPurpose;->SIGN_AND_VERIFY:Lorg/keyczar/enums/KeyPurpose;

    invoke-virtual {v1}, Lorg/keyczar/enums/KeyPurpose;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    .line 61
    :goto_1
    invoke-static {}, Lorg/keyczar/enums/KeyStatus;->values()[Lorg/keyczar/enums/KeyStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/keyczar/GenericKeyczar$1;->$SwitchMap$org$keyczar$enums$KeyStatus:[I

    :try_start_2
    sget-object v0, Lorg/keyczar/GenericKeyczar$1;->$SwitchMap$org$keyczar$enums$KeyStatus:[I

    sget-object v1, Lorg/keyczar/enums/KeyStatus;->PRIMARY:Lorg/keyczar/enums/KeyStatus;

    invoke-virtual {v1}, Lorg/keyczar/enums/KeyStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lorg/keyczar/GenericKeyczar$1;->$SwitchMap$org$keyczar$enums$KeyStatus:[I

    sget-object v1, Lorg/keyczar/enums/KeyStatus;->ACTIVE:Lorg/keyczar/enums/KeyStatus;

    invoke-virtual {v1}, Lorg/keyczar/enums/KeyStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lorg/keyczar/GenericKeyczar$1;->$SwitchMap$org$keyczar$enums$KeyStatus:[I

    sget-object v1, Lorg/keyczar/enums/KeyStatus;->INACTIVE:Lorg/keyczar/enums/KeyStatus;

    invoke-virtual {v1}, Lorg/keyczar/enums/KeyStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    .line 231
    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
