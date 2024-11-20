.class public abstract Lcom/google/firebase/firestore/model/BasePath;
.super Ljava/lang/Object;
.source "BasePath.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/google/firebase/firestore/model/BasePath<",
        "TB;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TB;>;"
    }
.end annotation


# instance fields
.field final segments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    .local p1, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/firebase/firestore/model/BasePath;->segments:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public append(Lcom/google/firebase/firestore/model/BasePath;)Lcom/google/firebase/firestore/model/BasePath;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TB;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    .local p1, "path":Lcom/google/firebase/firestore/model/BasePath;, "TB;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/BasePath;->segments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    .local v0, "newPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p1, Lcom/google/firebase/firestore/model/BasePath;->segments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/model/BasePath;->createPathWithSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    return-object v1
.end method

.method public append(Ljava/lang/String;)Lcom/google/firebase/firestore/model/BasePath;
    .locals 2
    .param p1, "segment"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/model/BasePath;->segments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 47
    .local v0, "newPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/model/BasePath;->createPathWithSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    return-object v1
.end method

.method public abstract canonicalString()Ljava/lang/String;
.end method

.method public compareTo(Lcom/google/firebase/firestore/model/BasePath;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)I"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    .local p1, "o":Lcom/google/firebase/firestore/model/BasePath;, "TB;"
    const/4 v0, 0x0

    .line 89
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v1

    .line 90
    .local v1, "myLength":I
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v2

    .line 91
    .local v2, "theirLength":I
    :goto_0
    if-ge v0, v1, :cond_1

    if-ge v0, v2, :cond_1

    .line 92
    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/model/BasePath;->getSegment(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/BasePath;->getSegment(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 93
    .local v3, "localCompare":I
    if-eqz v3, :cond_0

    .line 94
    return v3

    .line 96
    :cond_0
    nop

    .end local v3    # "localCompare":I
    add-int/lit8 v0, v0, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_1
    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result v3

    return v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    check-cast p1, Lcom/google/firebase/firestore/model/BasePath;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/BasePath;->compareTo(Lcom/google/firebase/firestore/model/BasePath;)I

    move-result p1

    return p1
.end method

.method abstract createPathWithSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/BasePath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 165
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 166
    return v0

    .line 168
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/model/BasePath;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/model/BasePath;

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/model/BasePath;->compareTo(Lcom/google/firebase/firestore/model/BasePath;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFirstSegment()Ljava/lang/String;
    .locals 2

    .line 108
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/model/BasePath;->segments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLastSegment()Ljava/lang/String;
    .locals 2

    .line 103
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/model/BasePath;->segments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSegment(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 36
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/model/BasePath;->segments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 173
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    const/16 v0, 0x25

    .line 174
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 175
    .local v1, "result":I
    mul-int v2, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 176
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int v1, v0, v2

    iget-object v3, p0, Lcom/google/firebase/firestore/model/BasePath;->segments:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 177
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 112
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImmediateParentOf(Lcom/google/firebase/firestore/model/BasePath;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)Z"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    .local p1, "potentialChild":Lcom/google/firebase/firestore/model/BasePath;, "TB;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    .line 140
    return v3

    .line 142
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 143
    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/model/BasePath;->getSegment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/BasePath;->getSegment(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    return v3

    .line 142
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public isPrefixOf(Lcom/google/firebase/firestore/model/BasePath;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)Z"
        }
    .end annotation

    .line 122
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    .local p1, "path":Lcom/google/firebase/firestore/model/BasePath;, "TB;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 123
    return v2

    .line 125
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 126
    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/model/BasePath;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/model/BasePath;->getSegment(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    return v2

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public keepFirst(I)Lcom/google/firebase/firestore/model/BasePath;
    .locals 2
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/model/BasePath;->segments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/model/BasePath;->createPathWithSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 160
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/model/BasePath;->segments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public popFirst()Lcom/google/firebase/firestore/model/BasePath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/model/BasePath;->popFirst(I)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v0

    return-object v0
.end method

.method public popFirst(I)Lcom/google/firebase/firestore/model/BasePath;
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v0

    .line 71
    .local v0, "length":I
    if-lt v0, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 72
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 71
    const-string v3, "Can\'t call popFirst with count > length() (%d > %d)"

    invoke-static {v1, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v1, p0, Lcom/google/firebase/firestore/model/BasePath;->segments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/firebase/firestore/model/BasePath;->createPathWithSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    return-object v1
.end method

.method public popLast()Lcom/google/firebase/firestore/model/BasePath;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/model/BasePath;->segments:Ljava/util/List;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/BasePath;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/model/BasePath;->createPathWithSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 154
    .local p0, "this":Lcom/google/firebase/firestore/model/BasePath;, "Lcom/google/firebase/firestore/model/BasePath<TB;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/BasePath;->canonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
