.class public final Lcom/google/firebase/firestore/model/DocumentKey;
.super Ljava/lang/Object;
.source "DocumentKey.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/firestore/model/DocumentKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_KEY_SET:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_FIELD_NAME:Ljava/lang/String; = "__name__"


# instance fields
.field private final path:Lcom/google/firebase/firestore/model/ResourcePath;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Lcom/google/firebase/firestore/model/DocumentKey$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/firebase/firestore/model/DocumentKey$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/model/DocumentKey;->COMPARATOR:Ljava/util/Comparator;

    .line 32
    new-instance v1, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 33
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    sput-object v1, Lcom/google/firebase/firestore/model/DocumentKey;->EMPTY_KEY_SET:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 32
    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/firestore/model/ResourcePath;)V
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v0

    const-string v1, "Not a document key path: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    .line 104
    return-void
.end method

.method public static comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/google/firebase/firestore/model/DocumentKey;->COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static empty()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->fromSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    return-object v0
.end method

.method public static emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/google/firebase/firestore/model/DocumentKey;->EMPTY_KEY_SET:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-object v0
.end method

.method public static fromName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 52
    invoke-static {p0}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 53
    .local v0, "resourceName":Lcom/google/firebase/firestore/model/ResourcePath;
    nop

    .line 54
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-le v1, v3, :cond_0

    .line 55
    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "projects"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "databases"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "documents"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 53
    const-string v3, "Tried to parse an invalid key: %s"

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/ResourcePath;->popFirst(I)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-static {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    return-object v1
.end method

.method public static fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1
    .param p0, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 70
    new-instance v0, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/DocumentKey;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;)V

    return-object v0
.end method

.method public static fromPathString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;

    .line 90
    new-instance v0, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-static {p0}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/DocumentKey;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;)V

    return-object v0
.end method

.method public static fromSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/firestore/model/DocumentKey;"
        }
    .end annotation

    .line 80
    .local p0, "segments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-static {p0}, Lcom/google/firebase/firestore/model/ResourcePath;->fromSegments(Ljava/util/List;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/DocumentKey;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;)V

    return-object v0
.end method

.method public static isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z
    .locals 1
    .param p0, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 95
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I
    .locals 2
    .param p1, "another"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 133
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v1, p1, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/ResourcePath;->compareTo(Lcom/google/firebase/firestore/model/BasePath;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/DocumentKey;->compareTo(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 138
    if-ne p0, p1, :cond_0

    .line 139
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 147
    .local v0, "that":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v1, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v2, v0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/ResourcePath;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 142
    .end local v0    # "that":Lcom/google/firebase/firestore/model/DocumentKey;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCollectionGroup()Ljava/lang/String;
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionPath()Lcom/google/firebase/firestore/model/ResourcePath;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/ResourcePath;

    return-object v0
.end method

.method public getDocumentId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lcom/google/firebase/firestore/model/ResourcePath;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    return-object v0
.end method

.method public hasCollectionId(Ljava/lang/String;)Z
    .locals 3
    .param p1, "collectionId"    # Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v0, v0, Lcom/google/firebase/firestore/model/ResourcePath;->segments:Ljava/util/List;

    iget-object v2, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentKey;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
