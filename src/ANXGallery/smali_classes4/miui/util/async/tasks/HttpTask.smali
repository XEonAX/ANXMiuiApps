.class public abstract Lmiui/util/async/tasks/HttpTask;
.super Lmiui/util/async/Task;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/async/tasks/HttpTask$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmiui/util/async/Task<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private DB:Lmiui/net/http/HttpSession$ProgressListener;

.field private final LD:Lmiui/util/async/tasks/HttpTask$Method;

.field private final LE:Ljava/lang/String;

.field private final LF:Lmiui/net/http/HttpRequestParams;

.field private final Lz:Lmiui/net/http/HttpSession;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 66
    sget-object v0, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Lmiui/util/async/tasks/HttpTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Ljava/lang/String;)V
    .locals 2

    .line 76
    sget-object v0, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lmiui/util/async/tasks/HttpTask;-><init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lmiui/net/http/HttpSession;Lmiui/util/async/tasks/HttpTask$Method;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .line 87
    invoke-direct {p0}, Lmiui/util/async/Task;-><init>()V

    .line 88
    if-nez p1, :cond_0

    .line 89
    invoke-static {}, Lmiui/net/http/HttpSession;->getDefault()Lmiui/net/http/HttpSession;

    move-result-object p1

    .line 92
    :cond_0
    iput-object p1, p0, Lmiui/util/async/tasks/HttpTask;->Lz:Lmiui/net/http/HttpSession;

    .line 93
    iput-object p2, p0, Lmiui/util/async/tasks/HttpTask;->LD:Lmiui/util/async/tasks/HttpTask$Method;

    .line 94
    sget-object p1, Lmiui/util/async/tasks/HttpTask$Method;->Get:Lmiui/util/async/tasks/HttpTask$Method;

    if-ne p2, p1, :cond_3

    .line 95
    if-eqz p4, :cond_2

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 96
    new-instance p1, Lmiui/net/http/HttpRequestParams;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p4, p2, v0

    invoke-direct {p1, p2}, Lmiui/net/http/HttpRequestParams;-><init>([Ljava/lang/Object;)V

    .line 97
    const/16 p2, 0x3f

    invoke-virtual {p3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-ltz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "&"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "?"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lmiui/net/http/HttpRequestParams;->getParamString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lmiui/util/async/tasks/HttpTask;->LE:Ljava/lang/String;

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iput-object p3, p0, Lmiui/util/async/tasks/HttpTask;->LE:Ljava/lang/String;

    .line 102
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lmiui/util/async/tasks/HttpTask;->LF:Lmiui/net/http/HttpRequestParams;

    goto :goto_2

    .line 104
    :cond_3
    iput-object p3, p0, Lmiui/util/async/tasks/HttpTask;->LE:Ljava/lang/String;

    .line 105
    new-instance p1, Lmiui/net/http/HttpRequestParams;

    invoke-direct {p1}, Lmiui/net/http/HttpRequestParams;-><init>()V

    iput-object p1, p0, Lmiui/util/async/tasks/HttpTask;->LF:Lmiui/net/http/HttpRequestParams;

    .line 106
    iget-object p1, p0, Lmiui/util/async/tasks/HttpTask;->LF:Lmiui/net/http/HttpRequestParams;

    invoke-virtual {p1, p4}, Lmiui/net/http/HttpRequestParams;->add(Ljava/util/Map;)Lmiui/net/http/HttpRequestParams;

    .line 108
    :goto_2
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lmiui/util/async/tasks/HttpTask;->LE:Ljava/lang/String;

    return-object v0
.end method

.method protected final request()Lmiui/net/http/HttpResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lmiui/util/async/tasks/HttpTask;->DB:Lmiui/net/http/HttpSession$ProgressListener;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lmiui/util/async/tasks/HttpTask$1;

    invoke-direct {v0, p0}, Lmiui/util/async/tasks/HttpTask$1;-><init>(Lmiui/util/async/tasks/HttpTask;)V

    iput-object v0, p0, Lmiui/util/async/tasks/HttpTask;->DB:Lmiui/net/http/HttpSession$ProgressListener;

    .line 134
    :cond_0
    nop

    .line 135
    sget-object v0, Lmiui/util/async/tasks/HttpTask$2;->LH:[I

    iget-object v1, p0, Lmiui/util/async/tasks/HttpTask;->LD:Lmiui/util/async/tasks/HttpTask$Method;

    invoke-virtual {v1}, Lmiui/util/async/tasks/HttpTask$Method;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    iget-object v0, p0, Lmiui/util/async/tasks/HttpTask;->Lz:Lmiui/net/http/HttpSession;

    iget-object v2, p0, Lmiui/util/async/tasks/HttpTask;->LE:Ljava/lang/String;

    iget-object v3, p0, Lmiui/util/async/tasks/HttpTask;->LF:Lmiui/net/http/HttpRequestParams;

    iget-object v4, p0, Lmiui/util/async/tasks/HttpTask;->DB:Lmiui/net/http/HttpSession$ProgressListener;

    invoke-virtual {v0, v2, v1, v3, v4}, Lmiui/net/http/HttpSession;->post(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;

    move-result-object v1

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lmiui/util/async/tasks/HttpTask;->Lz:Lmiui/net/http/HttpSession;

    iget-object v2, p0, Lmiui/util/async/tasks/HttpTask;->LE:Ljava/lang/String;

    iget-object v3, p0, Lmiui/util/async/tasks/HttpTask;->LF:Lmiui/net/http/HttpRequestParams;

    iget-object v4, p0, Lmiui/util/async/tasks/HttpTask;->DB:Lmiui/net/http/HttpSession$ProgressListener;

    invoke-virtual {v0, v2, v1, v3, v4}, Lmiui/net/http/HttpSession;->get(Ljava/lang/String;Ljava/util/Map;Lmiui/net/http/HttpRequestParams;Lmiui/net/http/HttpSession$ProgressListener;)Lmiui/net/http/HttpResponse;

    move-result-object v1

    .line 138
    nop

    .line 144
    :goto_0
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
