.class Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;
.super Landroid/os/AsyncTask;
.source "MovieStoryPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ParseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;
    .param p2, "x1"    # Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;-><init>(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)V

    return-void
.end method

.method private getSelection()Ljava/lang/String;
    .locals 8

    .prologue
    .line 144
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$300(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Ljava/util/Set;

    move-result-object v3

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-static {v3, v4}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$302(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;Ljava/util/Set;)Ljava/util/Set;

    .line 147
    :cond_0
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$300(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 148
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$400(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Lcom/miui/gallery/picker/helper/Picker;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/gallery/picker/helper/Picker;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 150
    .local v2, "str":Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-static {v3}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$300(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v2    # "str":Ljava/lang/String;
    :cond_1
    const-string v3, "%s IN (\'%s\')"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "sha1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "\',\'"

    iget-object v7, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-static {v7}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$300(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "selection":Ljava/lang/String;
    return-object v1
.end method

.method private getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 157
    sget-object v0, Lcom/miui/gallery/provider/GalleryContract$Media;->URI_OWNER_ALBUM_MEDIA:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "remove_duplicate_items"

    const/4 v2, 0x1

    .line 160
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 80
    const/4 v9, 0x0

    .line 81
    .local v9, "success":Z
    const/4 v6, 0x0

    .line 83
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->getUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/miui/gallery/movie/ui/adapter/StoryMoviePickAdapter;->PROJECTION:[Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->getSelection()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "alias_create_time DESC "

    .line 83
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    if-eqz v6, :cond_1

    .line 90
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 91
    .local v8, "resultCount":I
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0, v1}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$102(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;Ljava/util/List;)Ljava/util/List;

    .line 92
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$100(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/card/model/MediaInfo;

    invoke-direct {v1, v6}, Lcom/miui/gallery/card/model/MediaInfo;-><init>(Landroid/database/Cursor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 97
    .end local v8    # "resultCount":I
    :catch_0
    move-exception v7

    .line 98
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "MovieStoryPickActivity"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 101
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0

    .line 95
    .restart local v8    # "resultCount":I
    :cond_0
    const/4 v9, 0x1

    .line 100
    .end local v8    # "resultCount":I
    :cond_1
    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 101
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 101
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 10
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 108
    const-string v6, "MovieStoryPickActivity"

    const-string v7, "onPostExecute: the task is cancel."

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    .line 112
    const-string v6, "MovieStoryPickActivity"

    const-string v7, "onPostExecute: fail."

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-static {v6}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$100(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/util/MiscUtil;->isValid(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 116
    const-string v6, "MovieStoryPickActivity"

    const-string v7, "mMediaInfos is invalid ."

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$202(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;)Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;

    .line 121
    const/4 v0, 0x0

    .line 122
    .local v0, "clip":Landroid/content/ClipData;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-static {v6}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$100(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 123
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-static {v6}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$100(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 122
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    :cond_3
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-static {v6}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$100(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/card/model/MediaInfo;

    invoke-virtual {v6}, Lcom/miui/gallery/card/model/MediaInfo;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/gallery/provider/GalleryOpenProvider;->translateToContent(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 127
    .local v5, "uri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-static {v6}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->access$100(Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/gallery/card/model/MediaInfo;

    invoke-virtual {v6}, Lcom/miui/gallery/card/model/MediaInfo;->getSha1()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "sha1":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 129
    new-instance v0, Landroid/content/ClipData;

    .end local v0    # "clip":Landroid/content/ClipData;
    const-string v6, "data"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "image/*"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "text/uri-list"

    aput-object v9, v7, v8

    new-instance v8, Landroid/content/ClipData$Item;

    const/4 v9, 0x0

    invoke-direct {v8, v4, v9, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-direct {v0, v6, v7, v8}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .restart local v0    # "clip":Landroid/content/ClipData;
    goto :goto_2

    .line 131
    :cond_4
    new-instance v6, Landroid/content/ClipData$Item;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/net/Uri;)V

    invoke-virtual {v0, v6}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 138
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v2    # "i":I
    .end local v4    # "sha1":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "MovieStoryPickActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "clip":Landroid/content/ClipData;
    .restart local v2    # "i":I
    :cond_5
    :try_start_1
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->getResultIntent()Landroid/content/Intent;

    move-result-object v3

    .line 135
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 136
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    const/4 v7, -0x1

    invoke-virtual {v6, v7, v3}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->setResult(ILandroid/content/Intent;)V

    .line 137
    iget-object v6, p0, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->this$0:Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;

    invoke-virtual {v6}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 76
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/movie/ui/activity/MovieStoryPickActivity$ParseTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
