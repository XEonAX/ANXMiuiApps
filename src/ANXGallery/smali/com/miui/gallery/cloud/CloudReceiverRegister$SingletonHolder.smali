.class Lcom/miui/gallery/cloud/CloudReceiverRegister$SingletonHolder;
.super Ljava/lang/Object;
.source "CloudReceiverRegister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/CloudReceiverRegister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/miui/gallery/cloud/CloudReceiverRegister;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/miui/gallery/cloud/CloudReceiverRegister;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/CloudReceiverRegister;-><init>(Lcom/miui/gallery/cloud/CloudReceiverRegister$1;)V

    sput-object v0, Lcom/miui/gallery/cloud/CloudReceiverRegister$SingletonHolder;->sInstance:Lcom/miui/gallery/cloud/CloudReceiverRegister;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/gallery/cloud/CloudReceiverRegister;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/miui/gallery/cloud/CloudReceiverRegister$SingletonHolder;->sInstance:Lcom/miui/gallery/cloud/CloudReceiverRegister;

    return-object v0
.end method
