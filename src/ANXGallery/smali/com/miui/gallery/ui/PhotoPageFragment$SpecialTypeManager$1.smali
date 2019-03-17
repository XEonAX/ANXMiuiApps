.class Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$1;
.super Ljava/lang/Object;
.source "PhotoPageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/PhotoPageFragment$RecognitionTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    .prologue
    .line 4127
    iput-object p1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataItemRecognized(Lcom/miui/gallery/model/BaseDataItem;)V
    .locals 2
    .param p1, "dataItem"    # Lcom/miui/gallery/model/BaseDataItem;

    .prologue
    .line 4130
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    invoke-static {v1}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->access$6700(Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;)Lcom/miui/gallery/model/BaseDataItem;

    move-result-object v0

    .line 4131
    .local v0, "currentItem":Lcom/miui/gallery/model/BaseDataItem;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/miui/gallery/model/BaseDataItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4132
    iget-object v1, p0, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager$1;->this$0:Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;

    invoke-static {v1, p1}, Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;->access$6800(Lcom/miui/gallery/ui/PhotoPageFragment$SpecialTypeManager;Lcom/miui/gallery/model/BaseDataItem;)V

    .line 4134
    :cond_0
    return-void
.end method
