.class Lcom/miui/gallery/collage/CollageActivity$2;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/CollageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/CollageActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/CollageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/collage/CollageActivity;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$2;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$2;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/CollageActivity;->finish()V

    .line 246
    return-void
.end method
