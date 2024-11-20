.class public Lcom/google/firebase/firestore/local/OverlayedDocument;
.super Ljava/lang/Object;
.source "OverlayedDocument.java"


# instance fields
.field private mutatedFields:Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private overlayedDocument:Lcom/google/firebase/firestore/model/Document;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/mutation/FieldMask;)V
    .locals 0
    .param p1, "overlayedDocument"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "mutatedFields"    # Lcom/google/firebase/firestore/model/mutation/FieldMask;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/firebase/firestore/local/OverlayedDocument;->overlayedDocument:Lcom/google/firebase/firestore/model/Document;

    .line 28
    iput-object p2, p0, Lcom/google/firebase/firestore/local/OverlayedDocument;->mutatedFields:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    .line 29
    return-void
.end method


# virtual methods
.method public getDocument()Lcom/google/firebase/firestore/model/Document;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/google/firebase/firestore/local/OverlayedDocument;->overlayedDocument:Lcom/google/firebase/firestore/model/Document;

    return-object v0
.end method

.method public getMutatedFields()Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/firebase/firestore/local/OverlayedDocument;->mutatedFields:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    return-object v0
.end method
