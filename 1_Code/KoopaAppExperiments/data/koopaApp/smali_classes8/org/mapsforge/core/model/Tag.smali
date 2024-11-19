.class public Lorg/mapsforge/core/model/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/mapsforge/core/model/Tag;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final KEY_VALUE_SEPARATOR:C = '='

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final key:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 42
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/core/model/Tag;-><init>(Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "splitPosition"    # I

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/mapsforge/core/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/mapsforge/core/model/Tag;->key:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lorg/mapsforge/core/model/Tag;->value:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 23
    check-cast p1, Lorg/mapsforge/core/model/Tag;

    invoke-virtual {p0, p1}, Lorg/mapsforge/core/model/Tag;->compareTo(Lorg/mapsforge/core/model/Tag;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/mapsforge/core/model/Tag;)I
    .locals 3
    .param p1, "tag"    # Lorg/mapsforge/core/model/Tag;

    .line 67
    iget-object v0, p0, Lorg/mapsforge/core/model/Tag;->key:Ljava/lang/String;

    iget-object v1, p1, Lorg/mapsforge/core/model/Tag;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "keyResult":I
    if-eqz v0, :cond_0

    .line 70
    return v0

    .line 73
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/core/model/Tag;->value:Ljava/lang/String;

    iget-object v2, p1, Lorg/mapsforge/core/model/Tag;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 78
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 79
    return v0

    .line 80
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/core/model/Tag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 81
    return v2

    .line 83
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/core/model/Tag;

    .line 84
    .local v1, "other":Lorg/mapsforge/core/model/Tag;
    iget-object v3, p0, Lorg/mapsforge/core/model/Tag;->key:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 85
    iget-object v3, v1, Lorg/mapsforge/core/model/Tag;->key:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 86
    return v2

    .line 88
    :cond_2
    iget-object v4, v1, Lorg/mapsforge/core/model/Tag;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 89
    return v2

    .line 90
    :cond_3
    iget-object v3, p0, Lorg/mapsforge/core/model/Tag;->value:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 91
    iget-object v3, v1, Lorg/mapsforge/core/model/Tag;->value:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 92
    return v2

    .line 94
    :cond_4
    iget-object v4, v1, Lorg/mapsforge/core/model/Tag;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 95
    return v2

    .line 97
    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 102
    const/16 v0, 0x1f

    .line 103
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 104
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/mapsforge/core/model/Tag;->key:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 105
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/mapsforge/core/model/Tag;->value:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 106
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v1, p0, Lorg/mapsforge/core/model/Tag;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lorg/mapsforge/core/model/Tag;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
