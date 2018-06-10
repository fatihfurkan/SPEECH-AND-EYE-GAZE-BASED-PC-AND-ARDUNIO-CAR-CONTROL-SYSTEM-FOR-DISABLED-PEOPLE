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

import com.mathworks.toolbox.javabuilder.pooling.Poolable;
import java.util.List;
import java.rmi.Remote;
import java.rmi.RemoteException;

/**
 * The <code>Class1Remote</code> class provides a Java RMI-compliant interface to MATLAB 
 * functions. The interface is compiled from the following files:
 * <pre>
 *  C:\Users\Fatih Furkan\Documents\MATLAB\speech\Record.m
 *  C:\Users\Fatih Furkan\Documents\MATLAB\speech\test_word.m
 *  C:\Users\Fatih Furkan\Documents\MATLAB\speech\train_all_words.m
 *  C:\Users\Fatih Furkan\Documents\MATLAB\speech\train_word.m
 * </pre>
 * The {@link #dispose} method <b>must</b> be called on a <code>Class1Remote</code> 
 * instance when it is no longer needed to ensure that native resources allocated by this 
 * class are properly freed, and the server-side proxy is unexported.  (Failure to call 
 * dispose may result in server-side threads not being properly shut down, which often 
 * appears as a hang.)  
 *
 * This interface is designed to be used together with 
 * <code>com.mathworks.toolbox.javabuilder.remoting.RemoteProxy</code> to automatically 
 * generate RMI server proxy objects for instances of Record.Class1.
 */
public interface Class1Remote extends Poolable
{
    /**
     * Provides the standard interface for calling the <code>Record</code> MATLAB 
     * function with 0 input argument.  
     *
     * Input arguments to standard interface methods may be passed as sub-classes of 
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of any 
     * supported Java type (i.e. scalars and multidimensional arrays of any numeric, 
     * boolean, or character type, or String). Arguments passed as Java types are 
     * converted to MATLAB arrays according to default conversion rules.
     *
     * All inputs to this method must implement either Serializable (pass-by-value) or 
     * Remote (pass-by-reference) as per the RMI specification.
     *
     * Documentation as provided by the author of the MATLAB function:
     * <pre>
     * % get(recObj)
     * %recObj = audiorecorder;
     * </pre>
     *
     * @param rhs The inputs to the MATLAB function.
     *
     * @return Array of length nargout containing the function outputs. Outputs are 
     * returned as sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>. 
     * Each output array should be freed by calling its <code>dispose()</code> method.
     *
     * @throws java.rmi.RemoteException An error has occurred during the function call or 
     * in communication with the server.
     */
    public Object[] Record(Object... rhs) throws RemoteException;
    /**
     * Provides the standard interface for calling the <code>test_word</code> MATLAB 
     * function with 0 input argument.  
     *
     * Input arguments to standard interface methods may be passed as sub-classes of 
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of any 
     * supported Java type (i.e. scalars and multidimensional arrays of any numeric, 
     * boolean, or character type, or String). Arguments passed as Java types are 
     * converted to MATLAB arrays according to default conversion rules.
     *
     * All inputs to this method must implement either Serializable (pass-by-value) or 
     * Remote (pass-by-reference) as per the RMI specification.
     *
     * Documentation as provided by the author of the MATLAB function:
     * <pre>
     * % List of words we have already trained and have
     * % HMM model files in hmm_model_files directory.
     * </pre>
     *
     * @param nargout Number of outputs to return.
     * @param rhs The inputs to the MATLAB function.
     *
     * @return Array of length nargout containing the function outputs. Outputs are 
     * returned as sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>. 
     * Each output array should be freed by calling its <code>dispose()</code> method.
     *
     * @throws java.rmi.RemoteException An error has occurred during the function call or 
     * in communication with the server.
     */
    public Object[] test_word(int nargout, Object... rhs) throws RemoteException;
    /**
     * Provides the standard interface for calling the <code>train_all_words</code> 
     * MATLAB function with 0 input argument.  
     *
     * Input arguments to standard interface methods may be passed as sub-classes of 
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of any 
     * supported Java type (i.e. scalars and multidimensional arrays of any numeric, 
     * boolean, or character type, or String). Arguments passed as Java types are 
     * converted to MATLAB arrays according to default conversion rules.
     *
     * All inputs to this method must implement either Serializable (pass-by-value) or 
     * Remote (pass-by-reference) as per the RMI specification.
     *
     * No usage documentation is available for this function.  (To fix this, the function 
     * author should insert a help comment at the beginning of their MATLAB code.  See 
     * the MATLAB documentation for more details.)
     *
     * @param rhs The inputs to the MATLAB function.
     *
     * @return Array of length nargout containing the function outputs. Outputs are 
     * returned as sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>. 
     * Each output array should be freed by calling its <code>dispose()</code> method.
     *
     * @throws java.rmi.RemoteException An error has occurred during the function call or 
     * in communication with the server.
     */
    public Object[] train_all_words(Object... rhs) throws RemoteException;
    /**
     * Provides the standard interface for calling the <code>train_word</code> MATLAB 
     * function with 2 input arguments.  
     *
     * Input arguments to standard interface methods may be passed as sub-classes of 
     * <code>com.mathworks.toolbox.javabuilder.MWArray</code>, or as arrays of any 
     * supported Java type (i.e. scalars and multidimensional arrays of any numeric, 
     * boolean, or character type, or String). Arguments passed as Java types are 
     * converted to MATLAB arrays according to default conversion rules.
     *
     * All inputs to this method must implement either Serializable (pass-by-value) or 
     * Remote (pass-by-reference) as per the RMI specification.
     *
     * Documentation as provided by the author of the MATLAB function:
     * <pre>
     * % read wav file and generate cepstrum
     * </pre>
     *
     * @param rhs The inputs to the MATLAB function.
     *
     * @return Array of length nargout containing the function outputs. Outputs are 
     * returned as sub-classes of <code>com.mathworks.toolbox.javabuilder.MWArray</code>. 
     * Each output array should be freed by calling its <code>dispose()</code> method.
     *
     * @throws java.rmi.RemoteException An error has occurred during the function call or 
     * in communication with the server.
     */
    public Object[] train_word(Object... rhs) throws RemoteException;
  
    /** 
     * Frees native resources associated with the remote server object 
     * @throws java.rmi.RemoteException An error has occurred during the function call or in communication with the server.
     */
    void dispose() throws RemoteException;
}
