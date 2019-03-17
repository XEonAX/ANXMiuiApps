.class Lcom/miui/gallery/share/GridPreferenceBase$1;
.super Ljava/lang/Object;
.source "GridPreferenceBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/share/GridPreferenceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/share/GridPreferenceBase;


# direct methods
.method constructor <init>(Lcom/miui/gallery/share/GridPreferenceBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/share/GridPreferenceBase;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/miui/gallery/share/GridPreferenceBase$1;->this$0:Lcom/miui/gallery/share/GridPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 28
    iget-object v1, p0, Lcom/miui/gallery/share/GridPreferenceBase$1;->this$0:Lcom/miui/gallery/share/GridPreferenceBase;

    invoke-static {v1}, Lcom/miui/gallery/share/GridPreferenceBase;->access$000(Lcom/miui/gallery/share/GridPreferenceBase;)Lcom/miui/gallery/share/GridPreferenceBase$OnItemClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/miui/gallery/share/GridPreferenceBase$1;->this$0:Lcom/miui/gallery/share/GridPreferenceBase;

    invoke-virtual {v1}, Lcom/miui/gallery/share/GridPreferenceBase;->getTagInfo()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 30
    .local v0, "position":I
    iget-object v1, p0, Lcom/miui/gallery/share/GridPreferenceBase$1;->this$0:Lcom/miui/gallery/share/GridPreferenceBase;

    invoke-static {v1}, Lcom/miui/gallery/share/GridPreferenceBase;->access$000(Lcom/miui/gallery/share/GridPreferenceBase;)Lcom/miui/gallery/share/GridPreferenceBase$OnItemClickListener;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/share/GridPreferenceBase$1;->this$0:Lcom/miui/gallery/share/GridPreferenceBase;

    invoke-interface {v1, v2, v0}, Lcom/miui/gallery/share/GridPreferenceBase$OnItemClickListener;->onItemClick(Lcom/miui/gallery/share/GridPreferenceBase;I)V

    .line 32
    .end local v0    # "position":I
    :cond_0
    return-void
.end method
