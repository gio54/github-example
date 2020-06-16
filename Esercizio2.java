import java.io.*; // Import necessario per lo stream di input

public class Esercizio2
{
    public static void main (String args[])
    {
        // Impostazione per lo standard input
        InputStreamReader input = new InputStreamReader(System.in);
        BufferedReader Tastiera = new BufferedReader(input);
        String TestoLetto;
        
        // INPUT
        try {
               System.out.print("Digita la stringa: ");
               TestoLetto=Tastiera.readLine();
        }
        catch (Exception e) {
            return;
        }
        // ALGORITMO
        int  NrMaiuscole=0;
        for (int i=0; i <TestoLetto.length() ; i++)
        {
            if (TestoLetto.charAt(i)>='A' && TestoLetto.charAt(i)<='Z' )
                NrMaiuscole++;
        }
        
        // OUTPUT
        if (NrMaiuscole>0)
           System.out.println("Il numero di lettere maiuscole e': "+NrMaiuscole);
        else
           System.out.println("Non ho nessuna lettera maiuscola");
    }
}