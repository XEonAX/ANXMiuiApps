.class Lcom/miui/gallery/cloud/control/ServerTagCache$Singleton;
.super Ljava/lang/Object;
.source "ServerTagCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/control/ServerTagCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final SINSTANCE:Lcom/miui/gallery/cloud/control/ServerTagCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/miui/gallery/cloud/control/ServerTagCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloud/control/ServerTagCache;-><init>(Lcom/miui/gallery/cloud/control/ServerTagCache$1;)V

    sput-object v0, Lcom/miui/gallery/cloud/control/ServerTagCache$Singleton;->SINSTANCE:Lcom/miui/gallery/cloud/control/ServerTagCache;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/gallery/cloud/control/ServerTagCache;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/miui/gallery/cloud/control/ServerTagCache$Singleton;->SINSTANCE:Lcom/miui/gallery/cloud/control/ServerTagCache;

    return-object v0
.end method
