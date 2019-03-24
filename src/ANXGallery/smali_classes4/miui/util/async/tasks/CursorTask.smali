.class public Lmiui/util/async/tasks/CursorTask;
.super Lmiui/util/async/tasks/ContentResolverQueryTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/tasks/ContentResolverQueryTask<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct/range {p0 .. p5}, Lmiui/util/async/tasks/ContentResolverQueryTask;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public doLoad()Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lmiui/util/async/tasks/CursorTask;->query()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-virtual {p0}, Lmiui/util/async/tasks/CursorTask;->doLoad()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
