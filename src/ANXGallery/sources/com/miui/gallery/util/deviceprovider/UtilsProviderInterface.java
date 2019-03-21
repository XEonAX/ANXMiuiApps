package com.miui.gallery.util.deviceprovider;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;

public interface UtilsProviderInterface {
    Bundle processMiCloudSyncBundle(Context context, Account account, Bundle bundle);
}
