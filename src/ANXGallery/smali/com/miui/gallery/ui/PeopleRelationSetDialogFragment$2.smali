.class final Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$2;
.super Ljava/lang/Object;
.source "PeopleRelationSetDialogFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->createRelationSetDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/ThreadPool$Job",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$defaultRelation:Ljava/lang/String;

.field final synthetic val$peopleCount:I

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$2;->val$peopleCount:I

    iput-object p2, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$2;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$2;->val$defaultRelation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Landroid/os/Bundle;
    .locals 11
    .param p1, "jc"    # Lcom/miui/gallery/threadpool/ThreadPool$JobContext;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 107
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v4, "relationValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v3, "relationNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->getSystemRelationNameItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 110
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo;->getSystemRelationValueItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 113
    iget v9, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$2;->val$peopleCount:I

    if-gt v9, v8, :cond_5

    move v5, v8

    .line 114
    .local v5, "shouldShowMyselfGroup":Z
    :goto_0
    if-eqz v5, :cond_1

    .line 115
    iget-object v9, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$2;->val$activity:Landroid/app/Activity;

    sget-object v10, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    .line 116
    invoke-virtual {v10}, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->getRelationType()I

    move-result v10

    .line 115
    invoke-static {v9, v10}, Lcom/miui/gallery/provider/FaceManager;->queryPeopleIdOfRelation(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v2

    .line 117
    .local v2, "peopleUnderMyselfGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_6

    :cond_0
    move v5, v8

    .line 120
    .end local v2    # "peopleUnderMyselfGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    if-nez v5, :cond_2

    .line 121
    sget-object v7, Lcom/miui/gallery/model/PeopleContactInfo$Relation;->myself:Lcom/miui/gallery/model/PeopleContactInfo$Relation;

    invoke-static {v7}, Lcom/miui/gallery/model/PeopleContactInfo;->getRelationValue(Lcom/miui/gallery/model/PeopleContactInfo$Relation;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 122
    .local v1, "index":I
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 123
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 126
    .end local v1    # "index":I
    :cond_2
    invoke-static {}, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;->getUserDefineRelations()Ljava/util/ArrayList;

    move-result-object v6

    .line 127
    .local v6, "userDefineRelations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_3

    .line 128
    iget-object v7, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$2;->val$activity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/miui/gallery/provider/FaceManager;->queryAllUserDefineRelationsOfPeople(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    .line 130
    :cond_3
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 131
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 132
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 134
    :cond_4
    invoke-static {v6}, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;->setUserDefineRelations(Ljava/util/ArrayList;)V

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 137
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v7, "people_relation_set_title"

    iget-object v8, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$2;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v7, "default_relation"

    iget-object v8, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$2;->val$defaultRelation:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v7, "relation_names"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 140
    const-string v7, "relation_values"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 141
    return-object v0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "shouldShowMyselfGroup":Z
    .end local v6    # "userDefineRelations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move v5, v7

    .line 113
    goto :goto_0

    .restart local v2    # "peopleUnderMyselfGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v5    # "shouldShowMyselfGroup":Z
    :cond_6
    move v5, v7

    .line 117
    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$2;->run(Lcom/miui/gallery/threadpool/ThreadPool$JobContext;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
