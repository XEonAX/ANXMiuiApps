.class public Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;
.super Ljava/lang/Object;
.source "MiuiBeautyRenderData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BeautyParams"
.end annotation


# instance fields
.field public mBrightEyeRatio:I

.field public mDeblemish:I

.field public mDepouchRatio:I

.field public mEyeLarge:I

.field public mFaceThin:I

.field public mIrisShineRatio:I

.field public mLipBeautyRatio:I

.field public mNoseThin:I

.field public mRelightingRatio:I

.field public mRuddyRatio:I

.field public mSmooth:I

.field public mWhite:I

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;


# direct methods
.method public constructor <init>(Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;Ljava/util/Map;)V
    .locals 5
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->this$0:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 42
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 43
    .local v0, "degree":I
    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$1;->$SwitchMap$com$miui$filtersdk$beauty$BeautyParameterType:[I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v2}, Lcom/miui/filtersdk/beauty/BeautyParameterType;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 45
    :pswitch_0
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mEyeLarge:I

    goto :goto_0

    .line 48
    :pswitch_1
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mFaceThin:I

    goto :goto_0

    .line 51
    :pswitch_2
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mWhite:I

    goto :goto_0

    .line 54
    :pswitch_3
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mSmooth:I

    goto :goto_0

    .line 57
    :pswitch_4
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mRuddyRatio:I

    goto :goto_0

    .line 60
    :pswitch_5
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mBrightEyeRatio:I

    goto :goto_0

    .line 63
    :pswitch_6
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mDeblemish:I

    goto :goto_0

    .line 66
    :pswitch_7
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mDepouchRatio:I

    goto :goto_0

    .line 69
    :pswitch_8
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mRelightingRatio:I

    goto :goto_0

    .line 72
    :pswitch_9
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mLipBeautyRatio:I

    goto :goto_0

    .line 75
    :pswitch_a
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mIrisShineRatio:I

    goto :goto_0

    .line 78
    :pswitch_b
    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyRenderData$BeautyParams;->mNoseThin:I

    goto :goto_0

    .line 84
    .end local v0    # "degree":I
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    :cond_0
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
