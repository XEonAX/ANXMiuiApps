.class Lcom/miui/gallery/hybrid/GalleryHybridActivity$1;
.super Ljava/lang/Object;
.source "GalleryHybridActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/hybrid/GalleryHybridActivity;->configureActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/hybrid/GalleryHybridActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/hybrid/GalleryHybridActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/hybrid/GalleryHybridActivity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity$1;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/miui/gallery/hybrid/GalleryHybridActivity$1;->this$0:Lcom/miui/gallery/hybrid/GalleryHybridActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/hybrid/GalleryHybridActivity;->finish()V

    .line 59
    return-void
.end method
