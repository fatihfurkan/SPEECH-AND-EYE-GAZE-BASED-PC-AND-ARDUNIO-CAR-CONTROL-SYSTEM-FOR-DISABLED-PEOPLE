/*
 * MATLAB Compiler: 6.4 (R2017a)
 * Date: Sat Oct 14 22:03:44 2017
 * Arguments: 
 * "-B""macro_default""-W""java:Record,Class1""-T""link:lib""-d""C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\Record\\for_testing""class{Class1:C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\Record.m,C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\test_word.m,C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\train_all_words.m,C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\train_word.m}""-a""C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\hmm_model_files\\aþaðý.mat""-a""C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\hmm_model_files\\aþaðý1.mat""-a""C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\hmm_model_files\\saða.mat""-a""C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\hmm_model_files\\saða1.mat""-a""C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\hmm_model_files\\sola.mat""-a""C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\hmm_model_files\\sola1.mat""-a""C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\hmm_model_files\\týkla.mat""-a""C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\hmm_model_files\\týkla1.mat""-a""C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\hmm_model_files\\yukarý.mat""-a""C:\\Users\\Fatih 
 * Furkan\\Documents\\MATLAB\\speech\\hmm_model_files\\yukarý1.mat"
 */

package Record;

import com.mathworks.toolbox.javabuilder.*;
import com.mathworks.toolbox.javabuilder.internal.*;

/**
 * <i>INTERNAL USE ONLY</i>
 */
public class RecordMCRFactory
{
   
    
    /** Component's uuid */
    private static final String sComponentId = "Record_0C622B61BDEDD5E82ABABE6914291C7F";
    
    /** Component name */
    private static final String sComponentName = "Record";
    
   
    /** Pointer to default component options */
    private static final MWComponentOptions sDefaultComponentOptions = 
        new MWComponentOptions(
            MWCtfExtractLocation.EXTRACT_TO_CACHE, 
            new MWCtfClassLoaderSource(RecordMCRFactory.class)
        );
    
    
    private RecordMCRFactory()
    {
        // Never called.
    }
    
    public static MWMCR newInstance(MWComponentOptions componentOptions) throws MWException
    {
        if (null == componentOptions.getCtfSource()) {
            componentOptions = new MWComponentOptions(componentOptions);
            componentOptions.setCtfSource(sDefaultComponentOptions.getCtfSource());
        }
        return MWMCR.newInstance(
            componentOptions, 
            RecordMCRFactory.class, 
            sComponentName, 
            sComponentId,
            new int[]{9,2,0}
        );
    }
    
    public static MWMCR newInstance() throws MWException
    {
        return newInstance(sDefaultComponentOptions);
    }
}
