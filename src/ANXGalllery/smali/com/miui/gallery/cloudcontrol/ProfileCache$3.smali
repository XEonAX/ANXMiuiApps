.class Lcom/miui/gallery/cloudcontrol/ProfileCache$3;
.super Lcom/google/gson/reflect/TypeToken;
.source "ProfileCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cloudcontrol/ProfileCache;->loadFromLocalFile(Ljava/io/Reader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/miui/gallery/cloudcontrol/FeatureProfile;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cloudcontrol/ProfileCache;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cloudcontrol/ProfileCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/cloudcontrol/ProfileCache;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/miui/gallery/cloudcontrol/ProfileCache$3;->this$0:Lcom/miui/gallery/cloudcontrol/ProfileCache;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
