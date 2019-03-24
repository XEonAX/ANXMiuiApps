.class Lmiui/util/ErrorReport$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ErrorReport;->a(Landroid/content/Context;Lmiui/util/ErrorReport$DataBuilder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Jh:Lmiui/util/ErrorReport$DataBuilder;

.field final synthetic Ji:I

.field final synthetic jv:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lmiui/util/ErrorReport$DataBuilder;I)V
    .locals 0

    .line 337
    iput-object p1, p0, Lmiui/util/ErrorReport$1;->jv:Landroid/content/Context;

    iput-object p2, p0, Lmiui/util/ErrorReport$1;->Jh:Lmiui/util/ErrorReport$DataBuilder;

    iput p3, p0, Lmiui/util/ErrorReport$1;->Ji:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 340
    iget-object p1, p0, Lmiui/util/ErrorReport$1;->jv:Landroid/content/Context;

    iget-object v0, p0, Lmiui/util/ErrorReport$1;->Jh:Lmiui/util/ErrorReport$DataBuilder;

    invoke-interface {v0}, Lmiui/util/ErrorReport$DataBuilder;->dt()Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p0, Lmiui/util/ErrorReport$1;->Ji:I

    invoke-static {p1, v0, v1}, Lmiui/util/ErrorReport;->sendReportRequest(Landroid/content/Context;Lorg/json/JSONObject;I)Z

    .line 341
    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 337
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/util/ErrorReport$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
