.class public final Lcom/google/firebase/firestore/core/DatabaseInfo;
.super Ljava/lang/Object;
.source "DatabaseInfo.java"


# instance fields
.field private final databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

.field private final host:Ljava/lang/String;

.field private final persistenceKey:Ljava/lang/String;

.field private final sslEnabled:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/DatabaseId;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "databaseId"    # Lcom/google/firebase/firestore/model/DatabaseId;
    .param p2, "persistenceKey"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "sslEnabled"    # Z

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    .line 39
    iput-object p2, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->persistenceKey:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->host:Ljava/lang/String;

    .line 41
    iput-boolean p4, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->sslEnabled:Z

    .line 42
    return-void
.end method


# virtual methods
.method public getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistenceKey()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->persistenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public isSslEnabled()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->sslEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DatabaseInfo(databaseId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->databaseId:Lcom/google/firebase/firestore/model/DatabaseId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " host:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/DatabaseInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
