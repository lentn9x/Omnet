package georouting;
import org.mixim.base.modules.BaseNetwLayer;
simple CoverPlus extends BaseNetwLayer
{
    parameters:
        bool debug = default(false);
        bool trace = default(false);
        bool useSimTracer = default(false);
        double Tx_interval @unit(s) = default(0s);

        bool isSourceNode = default(false);
        int destId = default(0);
        double destX @unit(m) = default(0m);
        double destY @unit(m) = default(0m);
        @display("i=block/fork");
        @class(CoverPlus);
}
