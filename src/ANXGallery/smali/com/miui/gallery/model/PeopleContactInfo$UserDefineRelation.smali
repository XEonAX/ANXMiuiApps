.class public Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;
.super Ljava/lang/Object;
.source "PeopleContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/model/PeopleContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDefineRelation"
.end annotation


# static fields
.field private static mUserDefineRelations:Ljava/util/ArrayList;
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
.method public static declared-synchronized addRelation(Ljava/lang/String;)V
    .locals 3
    .param p0, "relation"    # Ljava/lang/String;

    .prologue
    .line 315
    const-class v1, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;->mUserDefineRelations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;->mUserDefineRelations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 316
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;->mUserDefineRelations:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;->mUserDefineRelations:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_0
    monitor-exit v1

    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getUserDefineRelations()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    const-class v1, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;->mUserDefineRelations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    sget-object v2, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;->mUserDefineRelations:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setUserDefineRelations(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "relations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-class v0, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/miui/gallery/model/PeopleContactInfo$UserDefineRelation;->mUserDefineRelations:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit v0

    return-void

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
