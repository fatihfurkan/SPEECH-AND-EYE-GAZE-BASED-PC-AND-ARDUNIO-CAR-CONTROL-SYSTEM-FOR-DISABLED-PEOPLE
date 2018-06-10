/*
* MATLAB Compiler: 6.4 (R2017a)
* Date: Sat Oct 14 19:53:12 2017
* Arguments:
* "-B""macro_default""-W""dotnet:Record1,Class1,4.0,private""-T""link:lib""-d""C:\Users\Fa
* tih Furkan\Documents\MATLAB\speech\Record1\for_testing""-v""class{Class1:C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\Record.m,C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\test_word.m,C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\train_all_words.m,C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\train_word.m}""-a""C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\hmm_model_files\aþaðý.mat""-a""C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\hmm_model_files\aþaðý1.mat""-a""C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\hmm_model_files\saða.mat""-a""C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\hmm_model_files\saða1.mat""-a""C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\hmm_model_files\sola.mat""-a""C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\hmm_model_files\sola1.mat""-a""C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\hmm_model_files\týkla.mat""-a""C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\hmm_model_files\týkla1.mat""-a""C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\hmm_model_files\yukarý.mat""-a""C:\Users\Fatih
* Furkan\Documents\MATLAB\speech\hmm_model_files\yukarý1.mat"
*/
using System;
using System.Reflection;
using System.IO;
using MathWorks.MATLAB.NET.Arrays;
using MathWorks.MATLAB.NET.Utility;

#if SHARED
[assembly: System.Reflection.AssemblyKeyFile(@"")]
#endif

namespace Record1
{

  /// <summary>
  /// The Class1 class provides a CLS compliant, MWArray interface to the MATLAB
  /// functions contained in the files:
  /// <newpara></newpara>
  /// C:\Users\Fatih Furkan\Documents\MATLAB\speech\Record.m
  /// <newpara></newpara>
  /// C:\Users\Fatih Furkan\Documents\MATLAB\speech\test_word.m
  /// <newpara></newpara>
  /// C:\Users\Fatih Furkan\Documents\MATLAB\speech\train_all_words.m
  /// <newpara></newpara>
  /// C:\Users\Fatih Furkan\Documents\MATLAB\speech\train_word.m
  /// </summary>
  /// <remarks>
  /// @Version 4.0
  /// </remarks>
  public class Class1 : IDisposable
  {
    #region Constructors

    /// <summary internal= "true">
    /// The static constructor instantiates and initializes the MATLAB Runtime instance.
    /// </summary>
    static Class1()
    {
      if (MWMCR.MCRAppInitialized)
      {
        try
        {
          Assembly assembly= Assembly.GetExecutingAssembly();

          string ctfFilePath= assembly.Location;

          int lastDelimiter= ctfFilePath.LastIndexOf(@"\");

          ctfFilePath= ctfFilePath.Remove(lastDelimiter, (ctfFilePath.Length - lastDelimiter));

          string ctfFileName = "Record1.ctf";

          Stream embeddedCtfStream = null;

          String[] resourceStrings = assembly.GetManifestResourceNames();

          foreach (String name in resourceStrings)
          {
            if (name.Contains(ctfFileName))
            {
              embeddedCtfStream = assembly.GetManifestResourceStream(name);
              break;
            }
          }
          mcr= new MWMCR("",
                         ctfFilePath, embeddedCtfStream, true);
        }
        catch(Exception ex)
        {
          ex_ = new Exception("MWArray assembly failed to be initialized", ex);
        }
      }
      else
      {
        ex_ = new ApplicationException("MWArray assembly could not be initialized");
      }
    }


    /// <summary>
    /// Constructs a new instance of the Class1 class.
    /// </summary>
    public Class1()
    {
      if(ex_ != null)
      {
        throw ex_;
      }
    }


    #endregion Constructors

    #region Finalize

    /// <summary internal= "true">
    /// Class destructor called by the CLR garbage collector.
    /// </summary>
    ~Class1()
    {
      Dispose(false);
    }


    /// <summary>
    /// Frees the native resources associated with this object
    /// </summary>
    public void Dispose()
    {
      Dispose(true);

      GC.SuppressFinalize(this);
    }


    /// <summary internal= "true">
    /// Internal dispose function
    /// </summary>
    protected virtual void Dispose(bool disposing)
    {
      if (!disposed)
      {
        disposed= true;

        if (disposing)
        {
          // Free managed resources;
        }

        // Free native resources
      }
    }


    #endregion Finalize

    #region Methods

    /// <summary>
    /// Provides a void output, 0-input MWArrayinterface to the Record MATLAB function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// get(recObj)
    /// recObj = audiorecorder;
    /// </remarks>
    ///
    public void Record()
    {
      mcr.EvaluateFunction(0, "Record", new MWArray[]{});
    }


    /// <summary>
    /// Provides the standard 0-input MWArray interface to the Record MATLAB function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// get(recObj)
    /// recObj = audiorecorder;
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public MWArray[] Record(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "Record", new MWArray[]{});
    }


    /// <summary>
    /// Provides a void output, 0-input MWArrayinterface to the test_word MATLAB
    /// function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// List of words we have already trained and have
    /// HMM model files in hmm_model_files directory.
    /// </remarks>
    ///
    public void test_word()
    {
      mcr.EvaluateFunction(0, "test_word", new MWArray[]{});
    }


    /// <summary>
    /// Provides the standard 0-input MWArray interface to the test_word MATLAB function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// List of words we have already trained and have
    /// HMM model files in hmm_model_files directory.
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public MWArray[] test_word(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "test_word", new MWArray[]{});
    }


    /// <summary>
    /// Provides a void output, 0-input MWArrayinterface to the train_all_words MATLAB
    /// function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    ///
    public void train_all_words()
    {
      mcr.EvaluateFunction(0, "train_all_words", new MWArray[]{});
    }


    /// <summary>
    /// Provides the standard 0-input MWArray interface to the train_all_words MATLAB
    /// function.
    /// </summary>
    /// <remarks>
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public MWArray[] train_all_words(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "train_all_words", new MWArray[]{});
    }


    /// <summary>
    /// Provides a void output, 0-input MWArrayinterface to the train_word MATLAB
    /// function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// read wav file and generate cepstrum
    /// </remarks>
    ///
    public void train_word()
    {
      mcr.EvaluateFunction(0, "train_word", new MWArray[]{});
    }


    /// <summary>
    /// Provides a void output, 1-input MWArrayinterface to the train_word MATLAB
    /// function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// read wav file and generate cepstrum
    /// </remarks>
    /// <param name="wordName">Input argument #1</param>
    ///
    public void train_word(MWArray wordName)
    {
      mcr.EvaluateFunction(0, "train_word", wordName);
    }


    /// <summary>
    /// Provides a void output, 2-input MWArrayinterface to the train_word MATLAB
    /// function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// read wav file and generate cepstrum
    /// </remarks>
    /// <param name="wordName">Input argument #1</param>
    /// <param name="numStates">Input argument #2</param>
    ///
    public void train_word(MWArray wordName, MWArray numStates)
    {
      mcr.EvaluateFunction(0, "train_word", wordName, numStates);
    }


    /// <summary>
    /// Provides the standard 0-input MWArray interface to the train_word MATLAB
    /// function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// read wav file and generate cepstrum
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public MWArray[] train_word(int numArgsOut)
    {
      return mcr.EvaluateFunction(numArgsOut, "train_word", new MWArray[]{});
    }


    /// <summary>
    /// Provides the standard 1-input MWArray interface to the train_word MATLAB
    /// function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// read wav file and generate cepstrum
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="wordName">Input argument #1</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public MWArray[] train_word(int numArgsOut, MWArray wordName)
    {
      return mcr.EvaluateFunction(numArgsOut, "train_word", wordName);
    }


    /// <summary>
    /// Provides the standard 2-input MWArray interface to the train_word MATLAB
    /// function.
    /// </summary>
    /// <remarks>
    /// M-Documentation:
    /// read wav file and generate cepstrum
    /// </remarks>
    /// <param name="numArgsOut">The number of output arguments to return.</param>
    /// <param name="wordName">Input argument #1</param>
    /// <param name="numStates">Input argument #2</param>
    /// <returns>An Array of length "numArgsOut" containing the output
    /// arguments.</returns>
    ///
    public MWArray[] train_word(int numArgsOut, MWArray wordName, MWArray numStates)
    {
      return mcr.EvaluateFunction(numArgsOut, "train_word", wordName, numStates);
    }



    /// <summary>
    /// This method will cause a MATLAB figure window to behave as a modal dialog box.
    /// The method will not return until all the figure windows associated with this
    /// component have been closed.
    /// </summary>
    /// <remarks>
    /// An application should only call this method when required to keep the
    /// MATLAB figure window from disappearing.  Other techniques, such as calling
    /// Console.ReadLine() from the application should be considered where
    /// possible.</remarks>
    ///
    public void WaitForFiguresToDie()
    {
      mcr.WaitForFiguresToDie();
    }



    #endregion Methods

    #region Class Members

    private static MWMCR mcr= null;

    private static Exception ex_= null;

    private bool disposed= false;

    #endregion Class Members
  }
}
