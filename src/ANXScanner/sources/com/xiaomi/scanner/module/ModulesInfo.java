package com.xiaomi.scanner.module;

import android.content.Context;
import com.xiaomi.scanner.R;
import com.xiaomi.scanner.app.AppController;
import com.xiaomi.scanner.camera.CameraServicesImpl;
import com.xiaomi.scanner.debug.Log;
import com.xiaomi.scanner.debug.Log.Tag;
import com.xiaomi.scanner.module.ModuleManager.ModuleAgent;
import com.xiaomi.scanner.module.ModuleManager.ModuleBaseInfo;
import com.xiaomi.scanner.settings.FeatureManager;
import com.xiaomi.scanner.settings.Keys;
import com.xiaomi.scanner.settings.SettingsManager;
import com.xiaomi.scanner.settings.SettingsScopeNamespaces;
import com.xiaomi.scanner.translation.TranslationModule;
import com.xiaomi.scanner.util.AppUtil;
import com.xiaomi.scanner.util.DeviceUtil;

public class ModulesInfo {
    private static final Tag TAG = new Tag("ModulesInfo");

    public static void setupModules(Context context, ModuleManager moduleManager) {
        if (FeatureManager.isCodeModuleAvailable()) {
            registerModule(moduleManager, context.getResources().getInteger(R.integer.scan_mode_code), R.drawable.ic_scancode, R.string.module_title_code, SettingsScopeNamespaces.MODULE_CODE, context.getResources().getInteger(R.integer.scan_sort_mode_code), context.getResources().getInteger(R.integer.scan_weight_code));
        }
        if (FeatureManager.isShoppingModuleAvailable()) {
            registerModule(moduleManager, context.getResources().getInteger(R.integer.scan_mode_shopping), R.drawable.ic_shopping, R.string.module_title_shopping, SettingsScopeNamespaces.MODULE_SHOPPING, context.getResources().getInteger(R.integer.scan_sort_mode_shopping), context.getResources().getInteger(R.integer.scan_weight_shopping));
        }
        if (FeatureManager.isTranslationModuleAvailable()) {
            registerModule(moduleManager, context.getResources().getInteger(R.integer.scan_mode_translation), R.drawable.ic_translation, R.string.module_title_translation, SettingsScopeNamespaces.MODULE_TRANSLATION, context.getResources().getInteger(R.integer.scan_sort_mode_translation), context.getResources().getInteger(R.integer.scan_weight_translation));
        }
        if (FeatureManager.isBusinessCardModuleAvailable()) {
            registerModule(moduleManager, context.getResources().getInteger(R.integer.scan_mode_business_card), R.drawable.ic_business_card, R.string.module_title_business_card, SettingsScopeNamespaces.MODULE_BUSINESS_CARD, context.getResources().getInteger(R.integer.scan_sort_mode_business_card), context.getResources().getInteger(R.integer.scan_weight_bc));
        }
        if (shouldShowAAShoppingMenu(context)) {
            registerAmazonAssistant(context, moduleManager);
        }
        if (FeatureManager.isDocumentModuleAvailable()) {
            registerModule(moduleManager, context.getResources().getInteger(R.integer.scan_mode_document), R.drawable.ic_document, R.string.module_title_document, SettingsScopeNamespaces.MODULE_DOCUMENT, context.getResources().getInteger(R.integer.scan_sort_mode_document), context.getResources().getInteger(R.integer.scan_weight_document));
        }
        if (FeatureManager.isBusinessCardModuleAvailable()) {
            registerModule(moduleManager, context.getResources().getInteger(R.integer.scan_mode_plant), R.drawable.ic_plant, R.string.module_title_plant, SettingsScopeNamespaces.MODULE_PLANT, context.getResources().getInteger(R.integer.scan_sort_mode_plant), context.getResources().getInteger(R.integer.scan_weight_plant));
        }
        if (FeatureManager.isStudyModuleAvailable()) {
            registerModule(moduleManager, context.getResources().getInteger(R.integer.scan_mode_study), R.drawable.ic_study, R.string.module_title_study, SettingsScopeNamespaces.MODULE_STUDY, context.getResources().getInteger(R.integer.scan_sort_mode_study), context.getResources().getInteger(R.integer.scan_weight_study));
        }
    }

    private static boolean shouldShowAAShoppingMenu(Context context) {
        int launchCount = CameraServicesImpl.instance().getSettingsManager().getInteger(SettingsManager.SCOPE_GLOBAL, Keys.KEY_AMAZON_ASSISTANT_IS_FIRST_LAUNCH, Integer.valueOf(0)).intValue();
        CameraServicesImpl.instance().getSettingsManager().set(SettingsManager.SCOPE_GLOBAL, Keys.KEY_AMAZON_ASSISTANT_IS_FIRST_LAUNCH, launchCount + 1);
        if (!FeatureManager.isAmazonShoppingModuleAvailable(context)) {
            return false;
        }
        if (!DeviceUtil.isEURegion()) {
            switch (launchCount) {
                case 0:
                    if (AppUtil.isAmazonAssistantEnabled() || DeviceUtil.isPreLoadRegionAA()) {
                        return true;
                    }
                    return false;
                default:
                    return AppUtil.isAmazonAssistantEnabled();
            }
        } else if (AppUtil.isAmazonAssistantEnabled() || DeviceUtil.isPreLoadRegionAA()) {
            return true;
        } else {
            return false;
        }
    }

    public static void registerAmazonAssistant(Context context, ModuleManager moduleManager) {
        AppUtil.setAAFeatureShown(true);
        Log.d(TAG, "amazon shopping apps installed in the device already. Showing Shopping menu option under Scanner.");
        registerModule(moduleManager, context.getResources().getInteger(R.integer.scan_mode_amazon_shopping), R.drawable.ic_shopping, R.string.module_title_shopping, SettingsScopeNamespaces.MODULE_AMAZON_SHOPPING, context.getResources().getInteger(R.integer.scan_sort_mode_amazon_shopping), context.getResources().getInteger(R.integer.scan_weight_amazon_shopping));
    }

    private static void registerModule(ModuleManager moduleManager, int moduleId, int iconResId, int titleResId, String namespace, int sortId, int weight) {
        final int i = weight;
        final int i2 = sortId;
        final int i3 = moduleId;
        final int i4 = iconResId;
        final int i5 = titleResId;
        final String str = namespace;
        moduleManager.registerModule(new ModuleAgent() {
            public ModuleBaseInfo createModuleBaseInfo() {
                return new ModuleBaseInfo() {
                    public int getWeight() {
                        return i;
                    }

                    public int getSortId() {
                        return i2;
                    }

                    public int getModuleId() {
                        return i3;
                    }

                    public int getIconResourceId() {
                        return i4;
                    }

                    public int getTitleResourceId() {
                        return i5;
                    }

                    public String getScopeNamespace() {
                        return str;
                    }
                };
            }

            public ModuleController createModule(Context context, AppController app) {
                if (i3 == context.getResources().getInteger(R.integer.scan_mode_shopping)) {
                    return new ShoppingModule(app, i3);
                }
                if (i3 == context.getResources().getInteger(R.integer.scan_mode_amazon_shopping)) {
                    return new AmazonShoppingModule(app, i3);
                }
                if (i3 == context.getResources().getInteger(R.integer.scan_mode_translation)) {
                    return new TranslationModule(app, i3);
                }
                if (i3 == context.getResources().getInteger(R.integer.scan_mode_study)) {
                    return new StudyModule(app, i3);
                }
                if (i3 == context.getResources().getInteger(R.integer.scan_mode_document)) {
                    return new DocumentModule(app, i3);
                }
                if (i3 == context.getResources().getInteger(R.integer.scan_mode_business_card)) {
                    return new BusinessCardModule(app, i3);
                }
                if (i3 == context.getResources().getInteger(R.integer.scan_mode_plant)) {
                    return new PlantModule(i3);
                }
                return new CodeModule(app, i3);
            }
        });
    }
}
