.class public Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;
.super Lcom/miui/gallery/widget/GalleryDialogFragment;
.source "PeopleRelationSetDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;
    }
.end annotation


# instance fields
.field private mRelationNameItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRelationSelectedListener:Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;

.field private mRelationValueItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/gallery/widget/GalleryDialogFragment;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->mRelationNameItems:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->mRelationValueItems:Ljava/util/ArrayList;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->mRelationValueItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;)Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->mRelationSelectedListener:Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # Landroid/os/Bundle;
    .param p2, "x2"    # Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->doCreateDialog(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;)V

    return-void
.end method

.method public static createRelationSetDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "defaultRelation"    # Ljava/lang/String;
    .param p3, "peopleCount"    # I
    .param p4, "listener"    # Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;

    .prologue
    .line 104
    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMiscPool()Lcom/miui/gallery/threadpool/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$2;

    invoke-direct {v1, p3, p0, p1, p2}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$2;-><init>(ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$3;

    invoke-direct {v2, p0, p4}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$3;-><init>(Landroid/app/Activity;Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/threadpool/ThreadPool;->submit(Lcom/miui/gallery/threadpool/ThreadPool$Job;Lcom/miui/gallery/threadpool/FutureListener;)Lcom/miui/gallery/threadpool/Future;

    .line 152
    return-void
.end method

.method private static doCreateDialog(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "arguments"    # Landroid/os/Bundle;
    .param p2, "listener"    # Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;

    .prologue
    .line 157
    new-instance v0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;

    invoke-direct {v0}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;-><init>()V

    .line 158
    .local v0, "dialog":Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;
    invoke-virtual {v0, p1}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {v0, p2}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->setRelationSelectedListener(Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;)V

    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "PeopleRelationSetDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->showAllowingStateLoss(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private getDefaultIndexOfDialog()I
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "default_relation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "defaultRelation":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, -0x1

    .line 90
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->mRelationValueItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method private initDialogAdapter()V
    .locals 4

    .prologue
    const v3, 0x7f0c0148

    .line 42
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->mRelationNameItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "relation_names"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->mRelationValueItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "relation_values"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->mRelationNameItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->mRelationValueItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/miui/gallery/widget/GalleryDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->initDialogAdapter()V

    .line 39
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "people_relation_set_title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 52
    invoke-direct {p0}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->getDefaultIndexOfDialog()I

    move-result v1

    .line 53
    .local v1, "defaultIndex":I
    iget-object v2, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->mRelationNameItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->mRelationNameItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    new-instance v3, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$1;-><init>(Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public setRelationSelectedListener(Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment;->mRelationSelectedListener:Lcom/miui/gallery/ui/PeopleRelationSetDialogFragment$RelationSelectedListener;

    .line 95
    return-void
.end method
