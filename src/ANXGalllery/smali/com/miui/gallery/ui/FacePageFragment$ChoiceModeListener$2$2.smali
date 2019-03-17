.class Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2$2;
.super Ljava/lang/Object;
.source "FacePageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;->onGetFolderItem(Lcom/miui/gallery/ui/renameface/FaceAlbumHandlerBase$FaceFolderItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;

    .prologue
    .line 992
    iput-object p1, p0, Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2$2;->this$2:Lcom/miui/gallery/ui/FacePageFragment$ChoiceModeListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 995
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 996
    return-void
.end method
