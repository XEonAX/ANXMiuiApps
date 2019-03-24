.class public Lmiui/util/async/tasks/HttpJsonObjectTask;
.super Lmiui/util/async/tasks/HttpTextTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/async/tasks/HttpTextTask<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lmiui/util/async/tasks/HttpTextTask;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lmiui/util/async/tasks/HttpTextTask;-><init>(Lmiui/net/http/HttpSession;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiui/net/http/HttpSession;",
            "Lmiui/util/async/tasks/HttpTask$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/util/async/tasks/HttpTextTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    return-void
.end method


# virtual methods
.method public bridge synthetic doLoad()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    invoke-virtual {p0}, Lmiui/util/async/tasks/HttpJsonObjectTask;->doLoad()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public doLoad()Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lmiui/util/async/tasks/HttpJsonObjectTask;->requestText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
