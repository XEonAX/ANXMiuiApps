.class Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment$1;
.super Ljava/lang/Object;
.source "SwitchParameterBeautyFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment;

.field final synthetic val$beautyEffect:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment;Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment;

    iput-object p2, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment$1;->val$beautyEffect:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 32
    sget-object v3, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    invoke-virtual {v3}, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->getBeautyProcessor()Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    move-result-object v0

    .line 33
    .local v0, "beautyProcessor":Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment$1;->val$beautyEffect:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    if-eqz v3, :cond_0

    .line 34
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment$1;->val$beautyEffect:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    iget-object v3, v3, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mBeautyType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v0, v3}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->getSupportedParamRange(Lcom/miui/filtersdk/beauty/BeautyParameterType;)[F

    move-result-object v1

    .line 35
    .local v1, "range":[F
    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 36
    if-eqz p2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    .local v2, "value":F
    :goto_0
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment;

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment$1;->val$beautyEffect:Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;

    iget-object v4, v4, Lcom/miui/gallery/editor/photo/core/imports/miuibeauty/MiuiBeautyEffect;->mBeautyType:Lcom/miui/filtersdk/beauty/BeautyParameterType;

    invoke-virtual {v3, v4, v2}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment;->setBeautyParameterTable(Lcom/miui/filtersdk/beauty/BeautyParameterType;F)V

    .line 38
    iget-object v3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment;

    invoke-virtual {v3}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SwitchParameterBeautyFragment;->notifyBeautyParameterChanged()V

    .line 41
    .end local v1    # "range":[F
    .end local v2    # "value":F
    :cond_0
    return-void

    .line 36
    .restart local v1    # "range":[F
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
