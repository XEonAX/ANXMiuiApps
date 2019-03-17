.class Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;
.super Ljava/lang/Object;
.source "BackupTitle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/BackupTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TitleItemViewHolder"
.end annotation


# instance fields
.field public mBtn:Landroid/widget/TextView;

.field public mDesc:Landroid/widget/TextView;

.field public mIcon:Landroid/widget/ImageView;

.field public mProgress:Lcom/miui/gallery/widget/ColorRingProgress;

.field public mTextContainer:Landroid/view/View;

.field public mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/miui/gallery/ui/BackupTitle;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/BackupTitle;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;->this$0:Lcom/miui/gallery/ui/BackupTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/BackupTitle;Lcom/miui/gallery/ui/BackupTitle$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/BackupTitle;
    .param p2, "x1"    # Lcom/miui/gallery/ui/BackupTitle$1;

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/BackupTitle$TitleItemViewHolder;-><init>(Lcom/miui/gallery/ui/BackupTitle;)V

    return-void
.end method
