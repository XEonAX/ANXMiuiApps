.class Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;
.super Ljava/lang/Object;
.source "ShareComponentSorter.java"

# interfaces
.implements Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord$Evaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/ShareComponentSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GaussEvaluator"
.end annotation


# instance fields
.field private mCoefficient:D

.field private mToday:J

.field final synthetic this$0:Lcom/miui/gallery/util/ShareComponentSorter;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/util/ShareComponentSorter;)V
    .locals 4

    .prologue
    .line 282
    iput-object p1, p0, Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/gallery/util/ShareComponentSorter$ComponentRecord;->access$1400()J

    move-result-wide v2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;->mToday:J

    .line 284
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;->mCoefficient:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/ShareComponentSorter;Lcom/miui/gallery/util/ShareComponentSorter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/util/ShareComponentSorter;
    .param p2, "x1"    # Lcom/miui/gallery/util/ShareComponentSorter$1;

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;-><init>(Lcom/miui/gallery/util/ShareComponentSorter;)V

    return-void
.end method


# virtual methods
.method public evaluate(JI)F
    .locals 7
    .param p1, "day"    # J
    .param p3, "count"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;->this$0:Lcom/miui/gallery/util/ShareComponentSorter;

    invoke-static {v0}, Lcom/miui/gallery/util/ShareComponentSorter;->access$1500(Lcom/miui/gallery/util/ShareComponentSorter;)Lcom/miui/gallery/util/Gauss;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;->mToday:J

    sub-long/2addr v2, p1

    long-to-double v2, v2

    iget-wide v4, p0, Lcom/miui/gallery/util/ShareComponentSorter$GaussEvaluator;->mCoefficient:D

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/miui/gallery/util/Gauss;->value(D)D

    move-result-wide v0

    int-to-double v2, p3

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method
