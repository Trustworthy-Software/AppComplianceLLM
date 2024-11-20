.class public Lcom/google/firebase/firestore/local/QueryContext;
.super Ljava/lang/Object;
.source "QueryContext.java"


# instance fields
.field private documentReadCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/local/QueryContext;->documentReadCount:I

    return-void
.end method


# virtual methods
.method public getDocumentReadCount()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/google/firebase/firestore/local/QueryContext;->documentReadCount:I

    return v0
.end method

.method public incrementDocumentReadCount()V
    .locals 1

    .line 27
    iget v0, p0, Lcom/google/firebase/firestore/local/QueryContext;->documentReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/firestore/local/QueryContext;->documentReadCount:I

    .line 28
    return-void
.end method
