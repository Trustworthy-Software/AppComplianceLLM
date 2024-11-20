.class public final Lcom/google/firebase/firestore/model/DatabaseId;
.super Ljava/lang/Object;
.source "DatabaseId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/firestore/model/DatabaseId;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_DATABASE_ID:Ljava/lang/String; = "(default)"

.field public static final EMPTY:Lcom/google/firebase/firestore/model/DatabaseId;


# instance fields
.field private final databaseId:Ljava/lang/String;

.field private final projectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, ""

    invoke-static {v0, v0}, Lcom/google/firebase/firestore/model/DatabaseId;->forDatabase(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/model/DatabaseId;->EMPTY:Lcom/google/firebase/firestore/model/DatabaseId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "projectId"    # Ljava/lang/String;
    .param p2, "databaseId"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/firebase/firestore/model/DatabaseId;->projectId:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/google/firebase/firestore/model/DatabaseId;->databaseId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static forDatabase(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/model/DatabaseId;
    .locals 1
    .param p0, "projectId"    # Ljava/lang/String;
    .param p1, "databaseId"    # Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/model/DatabaseId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forProject(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DatabaseId;
    .locals 1
    .param p0, "projectId"    # Ljava/lang/String;

    .line 27
    const-string v0, "(default)"

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/model/DatabaseId;->forDatabase(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    return-object v0
.end method

.method public static fromName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/DatabaseId;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    invoke-static {p0}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 46
    .local v0, "resourceName":Lcom/google/firebase/firestore/model/ResourcePath;
    nop

    .line 47
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-le v1, v4, :cond_0

    .line 48
    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "projects"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "databases"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v1

    .line 46
    const-string v5, "Tried to parse an invalid resource name: %s"

    invoke-static {v3, v5, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    new-instance v1, Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4}, Lcom/google/firebase/firestore/model/ResourcePath;->getSegment(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/model/DatabaseId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/model/DatabaseId;)I
    .locals 3
    .param p1, "other"    # Lcom/google/firebase/firestore/model/DatabaseId;

    .line 91
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DatabaseId;->projectId:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/firebase/firestore/model/DatabaseId;->projectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/model/DatabaseId;->databaseId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/firestore/model/DatabaseId;->databaseId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 22
    check-cast p1, Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/model/DatabaseId;->compareTo(Lcom/google/firebase/firestore/model/DatabaseId;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 70
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 71
    return v0

    .line 73
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/model/DatabaseId;

    .line 79
    .local v2, "that":Lcom/google/firebase/firestore/model/DatabaseId;
    iget-object v3, p0, Lcom/google/firebase/firestore/model/DatabaseId;->projectId:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/firebase/firestore/model/DatabaseId;->projectId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/model/DatabaseId;->databaseId:Ljava/lang/String;

    iget-object v4, v2, Lcom/google/firebase/firestore/model/DatabaseId;->databaseId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 74
    .end local v2    # "that":Lcom/google/firebase/firestore/model/DatabaseId;
    :cond_3
    :goto_1
    return v1
.end method

.method public getDatabaseId()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DatabaseId;->databaseId:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DatabaseId;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DatabaseId;->projectId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 85
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/model/DatabaseId;->databaseId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 86
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DatabaseId("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/DatabaseId;->projectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/DatabaseId;->databaseId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
