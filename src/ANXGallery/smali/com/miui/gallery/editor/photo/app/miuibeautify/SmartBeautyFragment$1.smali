.class Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment$1;
.super Ljava/lang/Object;
.source "SmartBeautyFragment.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/recyclerview/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPrePos:I

.field final synthetic this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment$1;->mPrePos:I

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 4
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 52
    iget v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment$1;->mPrePos:I

    if-eq p3, v1, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;->access$000(Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    :goto_0
    return v3

    .line 56
    :cond_1
    iput p3, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment$1;->mPrePos:I

    .line 57
    sget-object v1, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->INSTANCE:Lcom/miui/filtersdk/beauty/BeautyProcessorManager;

    invoke-virtual {v1}, Lcom/miui/filtersdk/beauty/BeautyProcessorManager;->getBeautyProcessor()Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;

    move-result-object v0

    .line 58
    .local v0, "beautyProcessor":Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;

    invoke-virtual {v0, p3}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->getIntelligentLevelParams(I)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;->setBeautyParameterTable(Ljava/util/Map;)V

    .line 59
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;->notifyBeautyParameterChanged()V

    .line 60
    iget-object v1, p0, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment$1;->this$0:Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;

    invoke-static {v1}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;->access$100(Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyFragment;)Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyLevelItemAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/miui/gallery/editor/photo/app/miuibeautify/SmartBeautyLevelItemAdapter;->setSelection(I)V

    goto :goto_0
.end method
