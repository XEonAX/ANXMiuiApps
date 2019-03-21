package com.miui.gallery.editor.photo.app.miuibeautify;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Fragment;
import android.app.FragmentManager;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.miui.arcsoftbeauty.ArcsoftBeautyJni;
import com.miui.filtersdk.beauty.BeautyParameterType;
import com.miui.gallery.R;
import com.miui.gallery.editor.photo.app.MenuFragment;
import com.miui.gallery.editor.photo.app.RenderRecord;
import com.miui.gallery.editor.photo.app.miuibeautify.ChildMenuFragment.Callbacks;
import com.miui.gallery.editor.photo.core.Effect;
import com.miui.gallery.editor.photo.core.SdkProvider;
import com.miui.gallery.editor.photo.core.common.fragment.AbstractEffectFragment;
import com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautifyData;
import com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautyEffect;
import com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautyManager;
import com.miui.gallery.editor.photo.core.imports.miuibeauty.MiuiBeautyRenderFragment;
import com.miui.gallery.editor.photo.widgets.CommonBottomMenuWithUndo;
import com.miui.gallery.editor.photo.widgets.overscroll.HorizontalOverScrollBounceEffectDecorator;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.BlankDivider;
import com.miui.gallery.editor.photo.widgets.recyclerview.SimpleRecyclerView.OnItemClickListener;
import com.miui.gallery.stat.BaseSamplingStatHelper;
import com.miui.gallery.util.Log;
import com.miui.gallery.util.ToastUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import miui.app.ProgressDialog;
import miui.view.animation.CubicEaseOutInterpolator;
import miui.view.animation.QuarticEaseOutInterpolator;

public class MiuiBeautyFragment extends MenuFragment<AbstractEffectFragment, SdkProvider<MiuiBeautifyData, AbstractEffectFragment>> implements RenderRecord {
    public static int BEAUTY_RECORDS_MAX = 10;
    private int mAnimAppearDelay;
    private int mAnimAppearDuration;
    private int mAnimDisappearDuration;
    private int mAnimOffset;
    private View mAnimalLayout;
    private List<MiuiBeautifyData> mBeautyParameters;
    private CommonBottomMenuWithUndo mBottomMenuPanel;
    private Callbacks mChildMenuCallback = new Callbacks() {
        public void onBeautyParameterChanged(ChildMenuFragment menu) {
            AbstractEffectFragment fragment = (AbstractEffectFragment) MiuiBeautyFragment.this.getRenderFragment();
            if (fragment instanceof MiuiBeautyRenderFragment) {
                MiuiBeautyRenderFragment beautyRenderFragment = (MiuiBeautyRenderFragment) fragment;
                fragment.add(null, menu.getBeautyParameterTable());
                beautyRenderFragment.setShowProgressDelay(!(menu instanceof SmartBeautyFragment));
                fragment.render();
                if (!beautyRenderFragment.isComparisonEnable()) {
                    beautyRenderFragment.enableComparison(true);
                }
            }
        }

        public void changeTitle(String title) {
            MiuiBeautyFragment.this.mTitle.setText(title);
        }
    };
    private int mCurrentDataIndex;
    private boolean mDetectFace;
    private boolean mDetectTaskDone;
    private ChildFragmentData[] mFragmentData = new ChildFragmentData[(this.mSdkProvider.list().size() + 1)];
    private int[] mIcons;
    private boolean mInMainLayout = true;
    private OnItemClickListener mOnItemClickListener = new OnItemClickListener() {
        public boolean OnItemClick(RecyclerView parent, View child, int position) {
            ChildFragmentData childFragmentData = MiuiBeautyFragment.this.mFragmentData[position];
            ChildMenuFragment childMenuFragment = childFragmentData.newMenu();
            childMenuFragment.setCallback(MiuiBeautyFragment.this.mChildMenuCallback);
            AbstractEffectFragment fragment = (AbstractEffectFragment) MiuiBeautyFragment.this.getRenderFragment();
            if (!MiuiBeautyFragment.this.mInMainLayout) {
                return false;
            }
            if (fragment instanceof MiuiBeautyRenderFragment) {
                if (!MiuiBeautyFragment.this.mDetectTaskDone) {
                    Log.d("MiuiBeautyFragment", "detect task not done");
                    return false;
                } else if (childFragmentData.beautyEffect == null || !childFragmentData.beautyEffect.needFace() || MiuiBeautyFragment.this.mDetectFace) {
                    MiuiBeautyRenderFragment beautyRenderFragment = (MiuiBeautyRenderFragment) fragment;
                    beautyRenderFragment.setOnBeautyProcessListener(childMenuFragment);
                    MiuiBeautyFragment.this.showAnimal(false);
                    MiuiBeautyFragment.this.getChildFragmentManager().beginTransaction().add(R.id.child_menu_panel, childMenuFragment).commit();
                    beautyRenderFragment.setCompareOrigin(false);
                    beautyRenderFragment.enableComparison(false);
                    MiuiBeautyFragment.this.mInMainLayout = false;
                    MiuiBeautyFragment.this.mBottomMenuPanel.updateBottomBar(true);
                    MiuiBeautyFragment.this.mCurrentDataIndex = position;
                    HashMap<String, String> params = new HashMap();
                    params.put("name", ((MiuiBeautifyData) MiuiBeautyFragment.this.mBeautyParameters.get(MiuiBeautyFragment.this.mCurrentDataIndex)).name);
                    BaseSamplingStatHelper.recordCountEvent("_miuibeautify", "miui_beauty_item_click", params);
                } else {
                    ToastUtils.makeText(MiuiBeautyFragment.this.getActivity(), (int) R.string.photo_editor_miui_beauty_no_face);
                    return true;
                }
            }
            return true;
        }
    };
    private ProgressDialog mProgressDialog;
    private int mRecordCurr = 0;
    private int mRecordHead = 0;
    private int mRecordTail;
    private TextView mTitle;

    private static class ChildFragmentData {
        final MiuiBeautyEffect beautyEffect;
        final Class<? extends ChildMenuFragment> menu;

        public ChildFragmentData(Class<? extends ChildMenuFragment> _class, MiuiBeautyEffect effect) {
            this.menu = _class;
            this.beautyEffect = effect;
        }

        public ChildMenuFragment newMenu() {
            try {
                ChildMenuFragment childMenuFragment = (ChildMenuFragment) this.menu.newInstance();
                Bundle bundle = new Bundle();
                bundle.putParcelable("BEAUTY_EFFECT", this.beautyEffect);
                childMenuFragment.setArguments(bundle);
                return childMenuFragment;
            } catch (Throwable e) {
                Log.w("MiuiBeautyFragment", e);
                throw new IllegalStateException(e);
            } catch (Throwable e2) {
                Log.w("MiuiBeautyFragment", e2);
                throw new IllegalStateException(e2);
            }
        }
    }

    private static class DetectFaceTask extends AsyncTask<Void, Void, Integer> {
        private WeakReference<MiuiBeautyFragment> mFragmentWeakReference;

        DetectFaceTask(MiuiBeautyFragment fragment) {
            this.mFragmentWeakReference = new WeakReference(fragment);
        }

        protected Integer doInBackground(Void... params) {
            MiuiBeautyFragment fragment = (MiuiBeautyFragment) this.mFragmentWeakReference.get();
            if (fragment != null) {
                return Integer.valueOf(fragment.detectFaceNum());
            }
            return Integer.valueOf(0);
        }

        protected void onPreExecute() {
            super.onPreExecute();
        }

        protected void onPostExecute(Integer faceNum) {
            super.onPostExecute(faceNum);
            MiuiBeautyFragment fragment = (MiuiBeautyFragment) this.mFragmentWeakReference.get();
            if (fragment != null) {
                fragment.setDetectFace(faceNum.intValue() > 0);
                fragment.setDetectTaskDone(true);
            }
        }
    }

    public MiuiBeautyFragment() {
        super(Effect.MIUIBEAUTIFY);
        this.mFragmentData[0] = new ChildFragmentData(SmartBeautyFragment.class, null);
        MiuiBeautyEffect[] values = MiuiBeautyManager.getBeautyEffects();
        for (int i = 0; i < values.length; i++) {
            if (values[i].mBeautyType == BeautyParameterType.WHITEN_STRENGTH) {
                this.mFragmentData[i + 1] = new ChildFragmentData(DoubleParameterBeautyFragment.class, values[i]);
            } else if (values[i].mBeautyType == BeautyParameterType.DEBLEMISH) {
                this.mFragmentData[i + 1] = new ChildFragmentData(SwitchParameterBeautyFragment.class, values[i]);
            } else {
                this.mFragmentData[i + 1] = new ChildFragmentData(SingleParameterBeautyFragment.class, values[i]);
            }
        }
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        List<MiuiBeautifyData> parameters = new ArrayList(this.mSdkProvider.list());
        this.mBeautyParameters = new ArrayList(parameters.size() + 1);
        this.mBeautyParameters.add(new SmartBeautyData((short) 0, getActivity().getString(R.string.photo_editor_miui_beauty_menu_smart_beauty)));
        this.mBeautyParameters.addAll(parameters);
        this.mIcons = new int[]{R.drawable.icon_smart_beauty, R.drawable.icon_beauty_face_thin, R.drawable.icon_beauty_skin_white, R.drawable.icon_beauty_smooth, R.drawable.icon_beauty_eye_large, R.drawable.icon_beauty_eye_bright, R.drawable.icon_beauty_depouch, R.drawable.icon_beauty_deblemish, R.drawable.icon_beauty_relighting, R.drawable.icon_beauty_nose_thin, R.drawable.icon_beauty_lips};
    }

    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        return inflater.inflate(R.layout.miuibeauty_menu_fragment, container, false);
    }

    private void initAnimal() {
        this.mAnimOffset = getActivity().getResources().getDimensionPixelSize(R.dimen.photo_editor_enter_sub_editor_main_menu_offset);
        this.mAnimAppearDuration = getActivity().getResources().getInteger(R.integer.photo_editor_sub_editor_main_menu_appear_duration);
        this.mAnimDisappearDuration = getActivity().getResources().getInteger(R.integer.photo_editor_sub_editor_main_menu_disappear_duration);
        this.mAnimAppearDelay = getActivity().getResources().getInteger(R.integer.photo_editor_sub_editor_main_menu_appear_delay);
    }

    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        BeautyParameterAdapter adapter = new BeautyParameterAdapter(this.mBeautyParameters, this.mIcons);
        SimpleRecyclerView recyclerView = (SimpleRecyclerView) view.findViewById(R.id.parameter_list);
        recyclerView.setAdapter(adapter);
        adapter.setOnItemClickListener(this.mOnItemClickListener);
        recyclerView.addItemDecoration(new BlankDivider(getResources(), R.dimen.photo_editor_navigator_left_margin, 0));
        HorizontalOverScrollBounceEffectDecorator.setOverScrollEffect(recyclerView);
        this.mBottomMenuPanel = (CommonBottomMenuWithUndo) view.findViewById(R.id.bottom_bar);
        this.mBottomMenuPanel.setTitle(R.string.photo_editor_miui_beauty);
        this.mBottomMenuPanel.setRenderRecordListener(this);
        this.mBottomMenuPanel.updateBottomBar(true);
        this.mAnimalLayout = view.findViewById(R.id.layout);
        this.mTitle = (TextView) view.findViewById(R.id.title);
        initAnimal();
        new DetectFaceTask(this).execute(new Void[0]);
    }

    private void showAnimal(boolean enter) {
        ObjectAnimator anim = new ObjectAnimator();
        PropertyValuesHolder y;
        PropertyValuesHolder alpha;
        if (enter) {
            y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{(float) (-this.mAnimOffset), 0.0f});
            alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{0.0f, 1.0f});
            anim.setValues(new PropertyValuesHolder[]{y, alpha});
            anim.setDuration((long) this.mAnimAppearDuration);
            anim.setStartDelay((long) this.mAnimAppearDelay);
            anim.setInterpolator(new CubicEaseOutInterpolator());
        } else {
            y = PropertyValuesHolder.ofFloat(View.TRANSLATION_Y, new float[]{0.0f, (float) (-this.mAnimOffset)});
            alpha = PropertyValuesHolder.ofFloat(View.ALPHA, new float[]{1.0f, 0.0f});
            anim.setValues(new PropertyValuesHolder[]{y, alpha});
            anim.setDuration((long) this.mAnimDisappearDuration);
            anim.setInterpolator(new QuarticEaseOutInterpolator());
        }
        anim.setTarget(this.mAnimalLayout);
        anim.start();
    }

    public void recordCurrent() {
        this.mRecordCurr = (this.mRecordCurr + 1) % BEAUTY_RECORDS_MAX;
        this.mRecordTail = this.mRecordCurr;
        if (this.mRecordCurr == this.mRecordHead) {
            this.mRecordHead = (this.mRecordCurr + 1) % BEAUTY_RECORDS_MAX;
        }
    }

    public void previousRecord() {
        boolean z;
        boolean z2 = true;
        this.mRecordCurr = (this.mRecordCurr - 1) % BEAUTY_RECORDS_MAX;
        if (this.mRecordCurr < 0) {
            this.mRecordCurr += 10;
        }
        AbstractEffectFragment fragment = (AbstractEffectFragment) getRenderFragment();
        if (fragment instanceof MiuiBeautyRenderFragment) {
            ((MiuiBeautyRenderFragment) fragment).previousRecord();
        }
        CommonBottomMenuWithUndo commonBottomMenuWithUndo = this.mBottomMenuPanel;
        if (this.mRecordCurr != this.mRecordHead) {
            z = true;
        } else {
            z = false;
        }
        if (this.mRecordCurr == this.mRecordTail) {
            z2 = false;
        }
        commonBottomMenuWithUndo.onMenuUpdated(z, z2);
    }

    public void nextRecord() {
        boolean z;
        boolean z2 = true;
        this.mRecordCurr = (this.mRecordCurr + 1) % BEAUTY_RECORDS_MAX;
        AbstractEffectFragment fragment = (AbstractEffectFragment) getRenderFragment();
        if (fragment instanceof MiuiBeautyRenderFragment) {
            ((MiuiBeautyRenderFragment) fragment).nextRecord();
        }
        CommonBottomMenuWithUndo commonBottomMenuWithUndo = this.mBottomMenuPanel;
        if (this.mRecordCurr != this.mRecordHead) {
            z = true;
        } else {
            z = false;
        }
        if (this.mRecordCurr == this.mRecordTail) {
            z2 = false;
        }
        commonBottomMenuWithUndo.onMenuUpdated(z, z2);
    }

    public void onDetach() {
        super.onDetach();
        if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
            this.mProgressDialog.dismiss();
        }
    }

    protected void showProcessDialog() {
        this.mProgressDialog = new ProgressDialog(getActivity());
        this.mProgressDialog.setMessage(getActivity().getString(R.string.photo_editor_saving));
        this.mProgressDialog.setCanceledOnTouchOutside(false);
        this.mProgressDialog.setIndeterminate(true);
        this.mProgressDialog.show();
    }

    protected void hideProcessDialog() {
        if (this.mProgressDialog != null && this.mProgressDialog.isShowing()) {
            this.mProgressDialog.dismiss();
        }
    }

    protected void notifyDiscard() {
        if (hasChildFragment()) {
            AbstractEffectFragment fragment = (AbstractEffectFragment) getRenderFragment();
            fragment.add(null, null);
            fragment.render();
            if (fragment instanceof MiuiBeautyRenderFragment) {
                MiuiBeautyRenderFragment miuiBeautyRenderFragment = (MiuiBeautyRenderFragment) fragment;
                miuiBeautyRenderFragment.setCompareOrigin(true);
                if (miuiBeautyRenderFragment.isEmpty()) {
                    miuiBeautyRenderFragment.enableComparison(false);
                }
            }
            backToMainMenu();
            return;
        }
        super.notifyDiscard();
    }

    protected void notifySave() {
        if (hasChildFragment()) {
            AbstractEffectFragment fragment = (AbstractEffectFragment) getRenderFragment();
            if (fragment instanceof MiuiBeautyRenderFragment) {
                MiuiBeautyRenderFragment beautyRenderFragment = (MiuiBeautyRenderFragment) fragment;
                if (beautyRenderFragment.isBeautyParamWorked()) {
                    boolean z;
                    beautyRenderFragment.recordCurrent();
                    recordCurrent();
                    CommonBottomMenuWithUndo commonBottomMenuWithUndo = this.mBottomMenuPanel;
                    if (this.mRecordCurr != this.mRecordHead) {
                        z = true;
                    } else {
                        z = false;
                    }
                    commonBottomMenuWithUndo.onMenuUpdated(z, false);
                    beautyRenderFragment.setCompareOrigin(true);
                    HashMap<String, String> params = new HashMap();
                    params.put("name", ((MiuiBeautifyData) this.mBeautyParameters.get(this.mCurrentDataIndex)).name);
                    BaseSamplingStatHelper.recordCountEvent("_miuibeautify", "miui_beauty_item_save", params);
                }
            }
            backToMainMenu();
            return;
        }
        super.notifySave();
    }

    private boolean hasChildFragment() {
        return getChildFragmentManager().findFragmentById(R.id.child_menu_panel) != null;
    }

    private void backToMainMenu() {
        this.mBottomMenuPanel.updateBottomBar(this.mBottomMenuPanel.isShowTitle());
        this.mInMainLayout = true;
        FragmentManager fragmentManager = getChildFragmentManager();
        Fragment childMenuFragment = fragmentManager.findFragmentById(R.id.child_menu_panel);
        if (childMenuFragment != null) {
            showAnimal(true);
            fragmentManager.beginTransaction().remove(childMenuFragment).commit();
        }
        this.mTitle.setText(R.string.photo_editor_miui_beauty);
    }

    public int detectFaceNum() {
        Bitmap bitmap = getPreview();
        if (bitmap == null) {
            return 0;
        }
        return ArcsoftBeautyJni.detectFaceNum(bitmap, bitmap.getWidth(), bitmap.getHeight());
    }

    public void setDetectFace(boolean detectFace) {
        this.mDetectFace = detectFace;
    }

    public void setDetectTaskDone(boolean detectTaskDone) {
        this.mDetectTaskDone = detectTaskDone;
    }
}
