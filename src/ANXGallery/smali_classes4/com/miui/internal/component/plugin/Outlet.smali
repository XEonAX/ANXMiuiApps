.class public Lcom/miui/internal/component/plugin/Outlet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dL:Z

.field private dQ:Lcom/miui/internal/component/plugin/AccessPermission;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/miui/internal/component/plugin/Outlet;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()Lcom/miui/internal/component/plugin/AccessPermission;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/miui/internal/component/plugin/Outlet;->dQ:Lcom/miui/internal/component/plugin/AccessPermission;

    return-object v0
.end method

.method public isOptional()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/miui/internal/component/plugin/Outlet;->dL:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/miui/internal/component/plugin/Outlet;->name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setOptional(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/miui/internal/component/plugin/Outlet;->dL:Z

    .line 35
    return-void
.end method

.method public setVisibility(Lcom/miui/internal/component/plugin/AccessPermission;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/miui/internal/component/plugin/Outlet;->dQ:Lcom/miui/internal/component/plugin/AccessPermission;

    .line 27
    return-void
.end method
