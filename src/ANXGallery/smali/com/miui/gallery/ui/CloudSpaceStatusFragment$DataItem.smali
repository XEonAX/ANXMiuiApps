.class Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;
.super Ljava/lang/Object;
.source "CloudSpaceStatusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/CloudSpaceStatusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataItem"
.end annotation


# instance fields
.field mAppendSummary:Ljava/lang/String;

.field mAppendTitle:Ljava/lang/String;

.field mClickListener:Landroid/view/View$OnClickListener;

.field mIsShowArrow:Z

.field mSummary:Ljava/lang/String;

.field mTitle:Ljava/lang/String;

.field mValue:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/ui/CloudSpaceStatusFragment$1;

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/miui/gallery/ui/CloudSpaceStatusFragment$DataItem;-><init>()V

    return-void
.end method
