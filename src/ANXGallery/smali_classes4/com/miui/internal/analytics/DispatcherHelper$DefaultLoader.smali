.class Lcom/miui/internal/analytics/DispatcherHelper$DefaultLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/analytics/DispatcherHelper$CmdLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/analytics/DispatcherHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultLoader"
.end annotation


# instance fields
.field final synthetic J:Lcom/miui/internal/analytics/DispatcherHelper;


# direct methods
.method private constructor <init>(Lcom/miui/internal/analytics/DispatcherHelper;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/miui/internal/analytics/DispatcherHelper$DefaultLoader;->J:Lcom/miui/internal/analytics/DispatcherHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lorg/json/JSONArray;
    .locals 2

    .line 106
    const-string v0, "[{server:\"google\", app_name:\"com.android.fileexplorer\", app_id:\"UA-33608129-1\", items:[{id_regex:\"capacity_total\", policy:\"last\"},{id_regex:\"capacity_used\", policy:\"normal\"}]}]"

    .line 107
    nop

    .line 109
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 113
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method
