.class Lcom/miui/internal/analytics/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/internal/analytics/c;


# static fields
.field public static final TAG:Ljava/lang/String; = "ANALYTICS.SQLITESTORE"


# instance fields
.field private ar:Lcom/miui/internal/analytics/a;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-static {}, Lcom/miui/internal/analytics/a;->a()Lcom/miui/internal/analytics/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/internal/analytics/b;->ar:Lcom/miui/internal/analytics/a;

    .line 18
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 26
    iget-object v0, p0, Lcom/miui/internal/analytics/b;->ar:Lcom/miui/internal/analytics/a;

    if-eqz v0, :cond_0

    .line 27
    iget-object v1, p0, Lcom/miui/internal/analytics/b;->ar:Lcom/miui/internal/analytics/a;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/miui/internal/analytics/a;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    .line 22
    return-void
.end method

.method public d(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/miui/internal/analytics/b;->ar:Lcom/miui/internal/analytics/a;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/miui/internal/analytics/b;->ar:Lcom/miui/internal/analytics/a;

    invoke-virtual {v0, p1}, Lcom/miui/internal/analytics/a;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 36
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
