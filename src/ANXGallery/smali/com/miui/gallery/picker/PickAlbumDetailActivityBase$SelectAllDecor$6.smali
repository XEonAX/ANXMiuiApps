.class Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$6;
.super Ljava/lang/Object;
.source "PickAlbumDetailActivityBase.java"

# interfaces
.implements Lcom/miui/gallery/picker/PickAlbumDetailFragmentBase$ItemStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;


# direct methods
.method constructor <init>(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$6;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$6;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->access$300(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)V

    .line 171
    return-void
.end method
