function [miaRete,err]=learningBatch(miaRete,X,T,eta,numMaxEpoche)
    N=size(X,2);
    err=zeros(1,numMaxEpoche);
    for nep=1:numMaxEpoche
        %AGGIORNO LA RETE
%         for n=1:N
%             %CALCOLARE l'errore, stiamo nell'ipotesi che la funzione di errore
            %è la somma dei quatrati e le funzioni di attivazione sono la sigmoide
        [derW1,derW2,derB1,derB2]=calcolaDerivateCrossEntropySoftMax(miaRete,X,T);
        %% AGGIORNO LA RETE
        miaRete.W1=miaRete.W1-eta*derW1;
        miaRete.W2=miaRete.W2-eta*derW2;
        miaRete.b1=miaRete.b1-eta*derB1;
        miaRete.b2=miaRete.b2-eta*derB2;
%         end
        %CALCOLARE l'errore, stiamo nell'ipotesi che la funzione di errore
        %è la somma dei quatrati e le funzioni di attivazione sono la sigmoide
        Y=forwardProp(miaRete,X);
        Z=softmax(Y);
		y++;
        err(nep)= - sum(T .* log(Z),);
        disp(['epoch:' num2str(nep) ' err:' num2str(err(nep))]);

    end
end