.class Lcom/miui/gallery/ui/PeoplePageFragment$2$2;
.super Ljava/lang/Object;
.source "PeoplePageFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PeoplePageFragment$2;->onAntiDoubleItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/PeoplePageFragment$2;

.field final synthetic val$peopleId:Ljava/lang/String;

.field final synthetic val$peopleLocalId:Ljava/lang/String;

.field final synthetic val$peopleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/PeoplePageFragment$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miui/gallery/ui/PeoplePageFragment$2;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$2;

    iput-object p2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;->val$peopleLocalId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;->val$peopleId:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;->val$peopleName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleteProcess(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$2;

    iget-object v0, v0, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;->val$peopleLocalId:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;->val$peopleId:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;->val$peopleName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$2;

    iget-object v4, v4, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    .line 269
    invoke-static {v4}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$900(Lcom/miui/gallery/ui/PeoplePageFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$2;

    iget-object v5, v5, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v5}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$800(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v5

    .line 268
    invoke-static/range {v0 .. v5}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$1000(Lcom/miui/gallery/ui/PeoplePageFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 271
    .local v6, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "relationType"

    iget-object v1, p0, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;->this$1:Lcom/miui/gallery/ui/PeoplePageFragment$2;

    iget-object v1, v1, Lcom/miui/gallery/ui/PeoplePageFragment$2;->this$0:Lcom/miui/gallery/ui/PeoplePageFragment;

    invoke-static {v1}, Lcom/miui/gallery/ui/PeoplePageFragment;->access$800(Lcom/miui/gallery/ui/PeoplePageFragment;)Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v0, "people_mark"

    const-string v1, "mark_relation_in_people_page"

    invoke-static {v0, v1, v6}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 277
    .end local v6    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c029d

    invoke-static {v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public bridge synthetic onCompleteProcess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 264
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PeoplePageFragment$2$2;->onCompleteProcess(Ljava/lang/Boolean;)V

    return-void
.end method
