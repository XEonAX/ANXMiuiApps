.class Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity$1;
.super Ljava/lang/Object;
.source "NormalShareAlbumOwnerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity$1;->this$0:Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity$1;->this$0:Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;

    invoke-static {v0}, Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;->access$000(Lcom/miui/gallery/share/NormalShareAlbumOwnerActivity;)V

    .line 84
    return-void
.end method
