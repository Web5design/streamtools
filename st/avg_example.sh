clear
echo "Test of the average block"
echo ""
echo ""
echo "Make a post block"
curl "localhost:7070/create?blockType=postto"
echo ""
echo ""
echo "Make an Avg block"
curl "localhost:7070/create?blockType=avg"
echo ""
echo ""
echo "Set a rule for the avg block"
curl "localhost:7070/blocks/2/set_rule" --data '{"Key":"test"}'
echo ""
echo ""
echo "Connect the postto and avg blocks"
curl "localhost:7070/connect?from=1&to=2"
echo ""
echo ""
echo "Send data to the avg block"
curl "localhost:7070/blocks/1/in" --data '{"test":1.0}'
echo ""
echo ""
echo "Get the state of the avg block"
curl "localhost:7070/blocks/2/avg"
echo ""
echo ""
echo "Send data to the avg block"
curl "localhost:7070/blocks/1/in" --data '{"test":2.0}'
echo ""
echo ""
echo "Get avg block state again"
curl "localhost:7070/blocks/2/avg"
echo ""
echo ""
