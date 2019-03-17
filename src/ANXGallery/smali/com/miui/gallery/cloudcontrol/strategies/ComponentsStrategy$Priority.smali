.class public Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;
.super Ljava/lang/Object;
.source "ComponentsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Priority"
.end annotation


# instance fields
.field public final className:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "class-name"
    .end annotation
.end field

.field mMatchOrder:I

.field public final packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package-name"
    .end annotation
.end field

.field public final packagePrefix:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package-prefix"
    .end annotation
.end field

.field public final system:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "system"
    .end annotation
.end field

.field public final value:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# virtual methods
.method initMathOrder()V
    .locals 2

    .prologue
    .line 144
    const v0, 0x7fffffff

    .line 145
    .local v0, "priority":I
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->system:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 146
    const/4 v0, 0x3

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->packagePrefix:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 149
    const/4 v0, 0x2

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 152
    const/4 v0, 0x1

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->className:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 155
    const/4 v0, 0x0

    .line 157
    :cond_3
    iput v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->mMatchOrder:I

    .line 158
    return-void
.end method

.method public match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "isSystem"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 173
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 174
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->className:Ljava/lang/String;

    .line 175
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->className:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 175
    goto :goto_0

    .line 176
    :cond_2
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->packagePrefix:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 177
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->packagePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 178
    :cond_3
    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->system:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->system:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v2, p3, :cond_0

    :cond_4
    move v0, v1

    .line 181
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Priority{packagePrefix=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->packagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", className=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", system="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->system:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMatchOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ComponentsStrategy$Priority;->mMatchOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
