.class Lcom/miui/gallery/discovery/DiscoveryMessageManager$LoaderFactory;
.super Ljava/lang/Object;
.source "DiscoveryMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/discovery/DiscoveryMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/discovery/DiscoveryMessageManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/discovery/DiscoveryMessageManager$1;

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/miui/gallery/discovery/DiscoveryMessageManager$LoaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createLoader(Landroid/content/Context;I)Lcom/miui/gallery/loader/DiscoveryMessageLoader;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayScene"    # I

    .prologue
    .line 342
    packed-switch p2, :pswitch_data_0

    .line 348
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 345
    :pswitch_0
    const/4 v0, 0x3

    .line 346
    .local v0, "msgTypeMask":I
    new-instance v1, Lcom/miui/gallery/loader/DiscoveryMessageLoader;

    invoke-direct {v1, p1, v0}, Lcom/miui/gallery/loader/DiscoveryMessageLoader;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
