.class final Lcom/miui/gallery/ui/SyncBar$PanelData;
.super Ljava/lang/Object;
.source "SyncBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/SyncBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanelData"
.end annotation


# instance fields
.field public final desc:Ljava/lang/String;

.field public final listener:Landroid/view/View$OnClickListener;

.field public final showArrow:Z

.field public final title:Ljava/lang/String;

.field public final titleDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "titleDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "showArrow"    # Z
    .param p5, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-object p1, p0, Lcom/miui/gallery/ui/SyncBar$PanelData;->title:Ljava/lang/String;

    .line 675
    iput-object p2, p0, Lcom/miui/gallery/ui/SyncBar$PanelData;->desc:Ljava/lang/String;

    .line 676
    iput-object p3, p0, Lcom/miui/gallery/ui/SyncBar$PanelData;->titleDrawable:Landroid/graphics/drawable/Drawable;

    .line 677
    iput-boolean p4, p0, Lcom/miui/gallery/ui/SyncBar$PanelData;->showArrow:Z

    .line 678
    iput-object p5, p0, Lcom/miui/gallery/ui/SyncBar$PanelData;->listener:Landroid/view/View$OnClickListener;

    .line 679
    return-void
.end method
