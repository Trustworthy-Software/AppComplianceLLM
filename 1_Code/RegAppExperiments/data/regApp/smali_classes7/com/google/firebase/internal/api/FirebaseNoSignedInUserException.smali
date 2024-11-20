.class public Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;
.super Lcom/google/firebase/FirebaseException;
.source "com.google.firebase:firebase-auth-interop@@20.0.0"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 1
    .end local p0    # "this":Lcom/google/firebase/internal/api/FirebaseNoSignedInUserException;
    .end local p1    # "message":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    return-void
.end method
