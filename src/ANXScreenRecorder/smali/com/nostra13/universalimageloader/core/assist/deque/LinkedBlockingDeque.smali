.class public Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Lcom/nostra13/universalimageloader/core/assist/deque/BlockingDeque;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$1;,
        Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;,
        Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;,
        Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$AbstractItr;,
        Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Lcom/nostra13/universalimageloader/core/assist/deque/BlockingDeque",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56223931da801daL


# instance fields
.field private final capacity:I

.field private transient count:I

.field transient first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final notEmpty:Ljava/util/concurrent/locks/Condition;

.field private final notFull:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 152
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;-><init>(I)V

    .line 153
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 161
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 135
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 140
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    .line 145
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    .line 162
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 163
    :cond_0
    iput p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const v3, 0x7fffffff

    invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;-><init>(I)V

    .line 178
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 179
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 181
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 182
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_1

    .line 183
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 184
    .restart local v0    # "e":Ljava/lang/Object;, "TE;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v3, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 185
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Deque full"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 190
    return-void
.end method

.method private linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    iget v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    if-lt v1, v2, :cond_0

    .line 201
    const/4 v1, 0x0

    .line 211
    :goto_0
    return v1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 203
    .local v0, "f":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 204
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 205
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_1

    .line 206
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 209
    :goto_1
    iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 210
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 211
    const/4 v1, 0x1

    goto :goto_0

    .line 208
    :cond_1
    iput-object p1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    iget v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    if-lt v1, v2, :cond_0

    .line 220
    const/4 v1, 0x0

    .line 230
    :goto_0
    return v1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 222
    .local v0, "l":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iput-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 223
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 224
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    if-nez v1, :cond_1

    .line 225
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 228
    :goto_1
    iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 229
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 230
    const/4 v1, 0x1

    goto :goto_0

    .line 227
    :cond_1
    iput-object p1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 1183
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1184
    const/4 v1, 0x0

    iput v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 1185
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1186
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 1190
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1191
    .local v0, "item":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    .line 1195
    return-void

    .line 1193
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private unlinkFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 238
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 239
    .local v0, "f":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v0, :cond_0

    move-object v1, v3

    .line 252
    :goto_0
    return-object v1

    .line 241
    :cond_0
    iget-object v2, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 242
    .local v2, "n":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 243
    .local v1, "item":Ljava/lang/Object;, "TE;"
    iput-object v3, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 244
    iput-object v0, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 245
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 246
    if-nez v2, :cond_1

    .line 247
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 250
    :goto_1
    iget v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 251
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 249
    :cond_1
    iput-object v3, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private unlinkLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v3, 0x0

    .line 260
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 261
    .local v1, "l":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    move-object v0, v3

    .line 274
    :goto_0
    return-object v0

    .line 263
    :cond_0
    iget-object v2, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 264
    .local v2, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 265
    .local v0, "item":Ljava/lang/Object;, "TE;"
    iput-object v3, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 266
    iput-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 267
    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 268
    if-nez v2, :cond_1

    .line 269
    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 272
    :goto_1
    iget v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 273
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0

    .line 271
    :cond_1
    iput-object v3, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1160
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1161
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1164
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1166
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v1, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 1167
    iget-object v2, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1166
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    goto :goto_0

    .line 1169
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1173
    return-void

    .line 1171
    .end local v1    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 615
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->addLast(Ljava/lang/Object;)V

    .line 616
    const/4 v0, 0x1

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 969
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 970
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v0, "f":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 973
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 974
    iget-object v2, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 975
    .local v2, "n":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 976
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 977
    move-object v0, v2

    .line 978
    goto :goto_0

    .line 979
    .end local v2    # "n":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 980
    const/4 v3, 0x0

    iput v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 981
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 983
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 985
    return-void

    .line 983
    .end local v0    # "f":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 804
    if-nez p1, :cond_0

    .line 813
    :goto_0
    return v2

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 806
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 808
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v1, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_2

    .line 809
    iget-object v3, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 810
    const/4 v2, 0x1

    .line 813
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 808
    :cond_1
    :try_start_1
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 813
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1019
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$DescendingItr;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    .prologue
    .line 715
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .locals 4
    .param p2, "maxElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    .prologue
    .line 725
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<-TE;>;"
    if-nez p1, :cond_0

    .line 726
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 727
    :cond_0
    if-ne p1, p0, :cond_1

    .line 728
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 729
    :cond_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 730
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 732
    :try_start_0
    iget v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 733
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 734
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 739
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .end local v0    # "i":I
    .end local v2    # "n":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 680
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 533
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    .line 534
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 535
    :cond_0
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 542
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    .line 543
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 544
    :cond_0
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1001
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    new-instance v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Itr;-><init>(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$1;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 623
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 640
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 324
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 325
    .local v1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 326
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 328
    :try_start_0
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 330
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public offerFirst(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 390
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 391
    .local v1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 392
    .local v2, "nanos":J
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 393
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 395
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 396
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 397
    const/4 v4, 0x0

    .line 402
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return v4

    .line 398
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 400
    :cond_2
    const/4 v4, 0x1

    .line 402
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 339
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 340
    .local v1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 341
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 343
    :try_start_0
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 345
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public offerLast(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .locals 6
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 413
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 414
    .local v1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 415
    .local v2, "nanos":J
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 416
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 418
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    .line 419
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_1

    .line 420
    const/4 v4, 0x0

    .line 425
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return v4

    .line 421
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 423
    :cond_2
    const/4 v4, 0x1

    .line 425
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 684
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 548
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 549
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 551
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 553
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 551
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 559
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 563
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    .line 561
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 658
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 449
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 451
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 453
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pollFirst(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 496
    .local v2, "nanos":J
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 497
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 500
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_1

    .line 501
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 502
    const/4 v1, 0x0

    .line 507
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v1

    .line 503
    .restart local v1    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 507
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 458
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 459
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 461
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 463
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public pollLast(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 513
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    .line 514
    .local v2, "nanos":J
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 515
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    .line 518
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_1

    .line 519
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_0

    .line 520
    const/4 v1, 0x0

    .line 525
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_1
    return-object v1

    .line 521
    .restart local v1    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v2, v3}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    goto :goto_0

    .line 525
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 757
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 750
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->addFirst(Ljava/lang/Object;)V

    .line 751
    return-void
.end method

.method public put(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 631
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->putLast(Ljava/lang/Object;)V

    .line 632
    return-void
.end method

.method public putFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 354
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 355
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 356
    .local v1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 357
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 359
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkFirst(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 364
    return-void
.end method

.method public putLast(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 372
    :cond_0
    new-instance v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    invoke-direct {v1, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 373
    .local v1, "node":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 374
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 376
    :goto_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->linkLast(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 379
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 381
    return-void
.end method

.method public remainingCapacity()I
    .locals 3

    .prologue
    .line 699
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 700
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 702
    :try_start_0
    iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->capacity:I

    iget v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v1, v2

    .line 704
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 777
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    .line 434
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 435
    :cond_0
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 568
    if-nez p1, :cond_0

    .line 580
    :goto_0
    return v2

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 570
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 572
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v1, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_2

    .line 573
    iget-object v3, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 574
    invoke-virtual {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    const/4 v2, 0x1

    .line 580
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 572
    :cond_1
    :try_start_1
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 580
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    .line 443
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 444
    :cond_0
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    const/4 v2, 0x0

    .line 585
    if-nez p1, :cond_0

    .line 597
    :goto_0
    return v2

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 587
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 589
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->last:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v1, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_2

    .line 590
    iget-object v3, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 591
    invoke-virtual {p0, v1}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    const/4 v2, 0x1

    .line 597
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 589
    :cond_1
    :try_start_1
    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 597
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 786
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 787
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 789
    :try_start_0
    iget v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 791
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public take()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 662
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->takeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public takeFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 468
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 469
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 472
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    move-result-object v1

    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 473
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 476
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1
.end method

.method public takeLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 482
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 485
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    move-result-object v1

    .local v1, "x":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    .line 486
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notEmpty:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 489
    .end local v1    # "x":Ljava/lang/Object;, "TE;"
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .restart local v1    # "x":Ljava/lang/Object;, "TE;"
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .prologue
    .line 872
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 873
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 875
    :try_start_0
    iget v5, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    new-array v0, v5, [Ljava/lang/Object;

    .line 876
    .local v0, "a":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 877
    .local v1, "k":I
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v4, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v4, :cond_0

    .line 878
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v4, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v5, v0, v2

    .line 877
    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 881
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    .end local v0    # "a":[Ljava/lang/Object;
    .end local v2    # "k":I
    .end local v4    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 924
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 926
    :try_start_0
    array-length v5, p1

    iget v6, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    if-ge v5, v6, :cond_0

    .line 927
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    iget v6, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 930
    :cond_0
    const/4 v1, 0x0

    .line 931
    .local v1, "k":I
    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .local v4, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    :goto_0
    if-eqz v4, :cond_1

    .line 932
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    iget-object v5, v4, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 931
    iget-object v4, v4, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    move v2, v1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 933
    :cond_1
    array-length v5, p1

    if-le v5, v2, :cond_2

    .line 934
    const/4 v5, 0x0

    aput-object v5, p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 937
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .end local v2    # "k":I
    .end local v4    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 942
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 943
    .local v1, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 945
    :try_start_0
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->first:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 946
    .local v2, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v2, :cond_0

    .line 947
    const-string v4, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_0
    return-object v4

    .line 949
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 950
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 952
    :goto_1
    iget-object v0, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 953
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-ne v0, p0, :cond_1

    const-string v0, "(this Collection)"

    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 954
    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 955
    if-nez v2, :cond_2

    .line 956
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 960
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 957
    :cond_2
    const/16 v4, 0x2c

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 960
    .end local v2    # "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method unlink(Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, "this":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque<TE;>;"
    .local p1, "x":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v1, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 283
    .local v1, "p":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 284
    .local v0, "n":Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;, "Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node<TE;>;"
    if-nez v1, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkFirst()Ljava/lang/Object;

    .line 297
    :goto_0
    return-void

    .line 286
    :cond_0
    if-nez v0, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->unlinkLast()Ljava/lang/Object;

    goto :goto_0

    .line 289
    :cond_1
    iput-object v0, v1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->next:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 290
    iput-object v1, v0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->prev:Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;

    .line 291
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 294
    iget v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->count:I

    .line 295
    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/assist/deque/LinkedBlockingDeque;->notFull:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_0
.end method
