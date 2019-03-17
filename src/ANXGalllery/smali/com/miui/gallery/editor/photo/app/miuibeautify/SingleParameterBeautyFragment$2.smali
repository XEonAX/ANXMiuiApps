.class Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment$2;
.super Ljava/lang/Object;
.source "SingleParameterBeautyFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 56
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 60
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 8
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 64
    sget-object v5, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    invoke-virtual {v5}, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->getBeautyProcessor()Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    move-result-object v1

    .line 65
    .local v1, "beautyProcessor":Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 66
    .local v2, "data":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 67
    const-string v5, "BEAUTY_EFFECT"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    .line 68
    .local v0, "beautyEffect":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;
    if-eqz v0, :cond_0

    .line 69
    iget-object v5, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mBeautyType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v1, v5}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->getSupportedParamRange(Lcom/miui/filtersdk/beauty/BeautyParameterType;)[F

    move-result-object v3

    .line 70
    .local v3, "range":[F
    if-eqz v3, :cond_0

    array-length v5, v3

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x0

    aget v7, v3, v7

    sub-float/2addr v6, v7

    mul-float v4, v5, v6

    .line 72
    .local v4, "value":F
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;

    iget-object v6, v0, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mBeautyType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v5, v6, v4}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;->setBeautyParameterTable(Lcom/miui/filtersdk/beauty/BeautyParameterType;F)V

    .line 73
    iget-object v5, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment$2;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;

    invoke-virtual {v5}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SingleParameterBeautyFragment;->notifyBeautyParameterChanged()V

    .line 77
    .end local v0    # "beautyEffect":Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;
    .end local v3    # "range":[F
    .end local v4    # "value":F
    :cond_0
    return-void
.end method
