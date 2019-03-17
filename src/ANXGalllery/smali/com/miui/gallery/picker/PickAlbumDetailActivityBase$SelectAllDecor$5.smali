.class Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$5;
.super Landroid/database/DataSetObserver;
.source "PickAlbumDetailActivityBase.java"


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
    .line 151
    iput-object p1, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$5;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 155
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$5;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->access$000(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->updateTitle()V

    .line 156
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$5;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->access$200(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)V

    .line 157
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 162
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$5;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->access$000(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase;->updateTitle()V

    .line 163
    iget-object v0, p0, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor$5;->this$0:Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;

    invoke-static {v0}, Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;->access$200(Lcom/miui/gallery/picker/PickAlbumDetailActivityBase$SelectAllDecor;)V

    .line 164
    return-void
.end method
