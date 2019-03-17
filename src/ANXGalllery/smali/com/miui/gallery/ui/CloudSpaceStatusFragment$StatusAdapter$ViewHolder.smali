.class Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "CloudSpaceStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field mAppendSummary:Landroid/widget/TextView;

.field mAppendTitle:Landroid/widget/TextView;

.field mRightArrow:Landroid/view/View;

.field mSummary:Landroid/widget/TextView;

.field mSummayDivider:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;

.field mTitleDivider:Landroid/view/View;

.field mValue:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;->this$1:Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;
    .param p2, "x1"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter$ViewHolder;-><init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$StatusAdapter;)V

    return-void
.end method
