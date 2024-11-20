.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteSchema;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteSchema;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/SQLiteSchema;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/SQLiteSchema;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteSchema$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteSchema;->lambda$removeAcknowledgedMutations$1$com-google-firebase-firestore-local-SQLiteSchema(Ljava/lang/String;Landroid/database/Cursor;)V

    return-void
.end method
