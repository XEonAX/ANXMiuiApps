.class public Lcom/miui/gallery/net/resource/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field public category:I

.field public content:Ljava/lang/String;

.field public extra:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public id:J

.field public label:Ljava/lang/String;

.field public parent:J

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 16
    if-ne p0, p1, :cond_1

    .line 29
    :cond_0
    :goto_0
    return v1

    .line 18
    :cond_1
    instance-of v3, p1, Lcom/miui/gallery/net/resource/Resource;

    if-nez v3, :cond_2

    move v1, v2

    .line 19
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 21
    check-cast v0, Lcom/miui/gallery/net/resource/Resource;

    .line 22
    .local v0, "that":Lcom/miui/gallery/net/resource/Resource;
    iget-wide v4, p0, Lcom/miui/gallery/net/resource/Resource;->id:J

    iget-wide v6, v0, Lcom/miui/gallery/net/resource/Resource;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lcom/miui/gallery/net/resource/Resource;->parent:J

    iget-wide v6, v0, Lcom/miui/gallery/net/resource/Resource;->parent:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget v3, p0, Lcom/miui/gallery/net/resource/Resource;->category:I

    iget v4, v0, Lcom/miui/gallery/net/resource/Resource;->category:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/net/resource/Resource;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/net/resource/Resource;->type:Ljava/lang/String;

    .line 25
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/net/resource/Resource;->label:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/net/resource/Resource;->label:Ljava/lang/String;

    .line 26
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/net/resource/Resource;->icon:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/net/resource/Resource;->icon:Ljava/lang/String;

    .line 27
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/net/resource/Resource;->extra:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/net/resource/Resource;->extra:Ljava/lang/String;

    .line 28
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/miui/gallery/net/resource/Resource;->content:Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/gallery/net/resource/Resource;->content:Ljava/lang/String;

    .line 29
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/net/resource/Resource;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/gallery/net/resource/Resource;->parent:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/gallery/net/resource/Resource;->category:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/net/resource/Resource;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/net/resource/Resource;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
